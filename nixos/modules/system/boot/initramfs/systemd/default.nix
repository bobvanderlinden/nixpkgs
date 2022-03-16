# This module builds the initial ramdisk, which contains an init
# script that performs the first stage of booting the system: it loads
# the modules necessary to mount the root file system, then calls the
# init in the root file system to start the second boot stage.
{ config
, lib
, utils
, pkgs
, ...
}:
with lib; let
  cfg = config.boot.initramfs.systemd;

  systemd = config.systemd.package;

  kernel-name = config.boot.kernelPackages.kernel.name or "kernel";

  modulesTree = config.system.modulesTree.override { name = kernel-name + "-modules"; };
  firmware = config.hardware.firmware;

  # Determine the set of modules that we need to mount the root FS.
  modulesClosure = pkgs.makeModulesClosure {
    rootModules = config.boot.initrd.availableKernelModules ++ config.boot.initrd.kernelModules;
    kernel = modulesTree;
    firmware = firmware;
    allowMissing = false;
  };

  # The initrd only has to mount `/` or any FS marked as necessary for
  # booting (such as the FS containing `/nix/store`, or an FS needed for
  # mounting `/`, like `/` on a loopback).
  fileSystems = filter utils.fsNeededForBoot config.system.build.fileSystems;

  extraUnitsObjects = map (u: { object = u; }) (builtins.attrValues config.boot.initramfs.systemd.extraUnits
    ++ lib.concatLists (lib.mapAttrsToList (_: builtins.attrValues) config.boot.initramfs.systemd.unitOverrides));
  systemdUnits = pkgs.callPackage ./systemd-units.nix {
    inherit systemd;
    inherit (config.boot.initramfs.systemd) extraUnits unitOverrides;
  };

  fstab = pkgs.writeText "fstab" (lib.concatMapStringsSep "\n"
    ({ fsType
     , mountPoint
     , device
     , options
     , ...
     }: "${device} /sysroot${mountPoint} ${fsType} ${lib.concatStringsSep "," options}")
    fileSystems);

  groups = [
    "root"
    "tty"
    "dialout"
    "kmem"
    "input"
    "video"
    "render"
    "audio"
    "lp"
    "disk"
    "cdrom"
    "tape"
    "kvm"
  ];

  initrdUdevRules = pkgs.runCommand "udev-rules" { udevPackages = [ systemd pkgs.lvm2 ]; } ''
    mkdir -p $out/lib/udev
    for p in $udevPackages; do
      cp -r --preserve=all --no-preserve=mode $p/lib/udev $out/lib
    done
  '';

  emergencyEnv = pkgs.buildEnv {
    name = "packages";
    paths = map (p: lib.getBin p) config.boot.initramfs.systemd.emergency.packages;
    pathsToLink = [ "/bin" ];
  };
in
{
  options = {
    boot.initramfs.systemd.enable = mkEnableOption ''
      Whether to enable the NixOS initial RAM disk (initramfs) with systemd.
    '';

    boot.initramfs.systemd.unitOverrides = mkOption {
      description = ''
        TODO
      '';
      type = types.attrsOf (types.attrsOf types.path);
    };

    boot.initramfs.systemd.emergency.packages = mkOption {
      type = types.listOf types.package;
      description = ''
        Packages that are accessible during emergency mode during boot.
      '';
    };

    boot.initramfs.systemd.emergency.hashedPassword = mkOption {
      description = ''
        The password needed to access emergency mode during boot.
        "!" or "*" disables access to emergency mode.
      '';
      type = types.nullOr types.str;
      default = "!";
    };

    boot.initramfs.systemd.extraUnits = mkOption { type = types.attrsOf types.path; };
  };

  config = mkIf cfg.enable {
    assertions = [
      {
        assertion = config.boot.initramfs.enable;
        message = "systemd can only be enabled when initramfs is enabled";
      }
    ];

    boot.initrd.supportedFilesystems = map (fs: fs.fsType) fileSystems;

    boot.initramfs.systemd.emergency.packages = [
      pkgs.bash
      pkgs.coreutils
      pkgs.kmod
      systemd
      # TODO: These are actually needed for boot, not just emergency
      pkgs.util-linuxMinimal
    ];

    boot.initramfs.objects =
      extraUnitsObjects
      ++ [
        {
          object = "${systemd}/lib/systemd/systemd";
          symlink = "/init";
          executable = true;
        }
        {
          object = "${systemdUnits}";
          symlink = "/etc/systemd";
        }
        {
          object = builtins.toFile "passwd" "root:x:0:0:System Administrator:/root:/bin/bash";
          symlink = "/etc/passwd";
        }
        {
          object = builtins.toFile "shadow" "root:${config.boot.initramfs.systemd.emergency.hashedPassword}:::::::";
          symlink = "/etc/shadow";
        }
        # TODO: These are required for emergency mode; figure out which
        # parts specifically are needed
        {
          object = "${pkgs.glibc}/lib";
          executable = true;
        }
        {
          object = config.environment.etc.os-release.source;
          symlink = "/etc/initrd-release";
        }
        {
          object = config.environment.etc.os-release.source;
          symlink = "/etc/os-release";
        }
        {
          object = fstab;
          symlink = "/etc/fstab";
        }
        {
          symlink = "/etc/modules-load.d/nixos.conf";
          object = pkgs.writeText "nixos.conf"
            (lib.concatStringsSep "\n" config.boot.initrd.kernelModules);
        }
        {
          object = "${initrdUdevRules}/lib/udev";
          symlink = "/usr/lib/udev";
        }
        {
          object = "${modulesClosure}/lib/modules";
          symlink = "/lib/modules";
        }
        {
          object = "${emergencyEnv}/bin/";
          symlink = "/bin";
          executable = true;
        }
        # Put it at /sbin too so we don't have to set /proc/sys/kernel/modprobe
        {
          object = "${emergencyEnv}/bin/";
          symlink = "/sbin";
          executable = true;
        }
        {
          symlink = "/etc/bashrc";
          object = pkgs.writeShellScript "bashrc" ''
            PATH=${emergencyEnv}/bin
          '';
        }
      ]
      ++ map
        (p: {
          object = "${systemd}/${p}";
          executable = true;
        }) [
        "lib/systemd/systemd-modules-load"
        "bin/systemctl"
        "lib/systemd/systemd-udevd"
        "bin/udevadm"
        "lib/systemd/systemd-journald"
        "lib/systemd/systemd-sulogin-shell"
        "lib/systemd/system-generators"
        "bin/journalctl"
        "lib/systemd/systemd-vconsole-setup"
        "bin/systemd-tty-ask-password-agent"
        "lib/systemd/systemd-shutdown"
        "lib/systemd/systemd-makefs"
        "lib/systemd/systemd-growfs"
      ]
      ++ map
        (p: {
          object = "${lib.getBin pkgs.lvm2}/${p}";
          executable = true;
        }) [ "bin/dmsetup" "bin/lvm" ]
      ++ map
        (p: {
          object = "${lib.getBin p}/bin";
          executable = true;
        })
        config.boot.initramfs.systemd.emergency.packages;

    # TODO: This doesn't seem like it should be necessary.
    # Seems like we're missing some dependency in the default
    # unit files since we aren't copying all the default symlinks
    boot.initramfs.systemd.unitOverrides."systemd-udevd.service".modules = pkgs.writeText "modules.conf" ''
      [Unit]
      After=systemd-modules-load.service
    '';
  };
}
