# This module creates bootable Cerana media containing the given NixOS
# configuration.  The derivation for the media will be placed in
# config.system.build.cerana.

{ config, lib, pkgs, ... }:

with lib;

{
  options = {

    cerana.contents = mkOption {
      example = literalExample ''
        [ { source = pkgs.memtest86 + "/memtest.bin";
            target = "boot/memtest.bin";
          }
        ]
      '';
      description = ''
        This option lists files to be copied to fixed locations in the
        generated ISO image.
      '';
    };

    cerana.storeContents = mkOption {
      example = literalExample "[ pkgs.stdenv ]";
      description = ''
        This option lists additional derivations to be included in the
        Nix store in the generated Cerana image.
      '';
    };

  };

  config = {

    boot.loader.grub.version = 2;

    # Don't build the GRUB menu builder script, since we don't need it
    # here and it causes a cyclic dependency.
    boot.loader.grub.enable = false;

    # !!! Hack - attributes expected by other modules.
    system.boot.loader.kernelFile = "bzImage";
    environment.systemPackages = [ pkgs.grub2 pkgs.grub2_efi pkgs.syslinux ];

    boot.consoleLogLevel = mkDefault 7;

    fileSystems."/" =
      { fsType = "tmpfs";
        options = [ "mode=0755" ];
      };

    # In stage 1, mount /nix/store (the squashfs image).
    fileSystems."/nix" =
      { fsType = "squashfs";
        device = "/nix-store.squashfs";
        options = [ "loop" ];
        neededForBoot = true;
      };

    boot.initrd.availableKernelModules = [ "squashfs" ];

    boot.blacklistedKernelModules = [ "nouveau" ];

    boot.initrd.kernelModules = [ "loop" ];

    # Closures to be copied to the Nix store on the CD, namely the init
    # script and the top-level system configuration directory.
   cerana.storeContents =
      [ config.system.build.toplevel ];

    # Create the squashfs image that contains the Nix store.
    system.build.squashfsStore = import ../../../lib/make-squashfs.nix {
      inherit (pkgs) stdenv squashfsTools perl pathsFromGraph;
      storeContents = config.cerana.storeContents;
    };


  system.build.initialRamdisk = pkgs.makeInitrd {
    inherit (config.boot.initrd) compressor prepend;

    contents =
      [ { object = system.build.bootStage1;
          symlink = "/init";
        }
        { object = config.system.build.squashfsStore;
          target = "/nix-store.squashfs";
        }
      ];
  };

    # Individual files to be included
    cerana.contents =
      [ { source = config.boot.kernelPackages.kernel + "/bzImage";
          target = "/boot/bzImage";
        }
        { source = config.system.build.initialRamdisk + "/initrd";
          target = "/boot/initrd";
        }
        { source = config.system.build.squashfsStore;
          target = "/nix-store.squashfs";
        }
      ];


    # Create the tarball
    system.build.cerana = import ../../../lib/make-system-tarball.nix {
      inherit (pkgs) stdenv perl xz pathsFromGraph;

      inherit (config.cerana) contents;
    };


    boot.loader.timeout = 10;

    boot.postBootCommands =
      ''
        # After booting, register the contents of the Nix store on the
        # CD in the Nix database in the tmpfs.
        ${config.nix.package}/bin/nix-store --load-db < /nix/store/nix-path-registration

        # nixos-rebuild also requires a "system" profile and an
        # /etc/NIXOS tag.
        touch /etc/NIXOS
        ${config.nix.package}/bin/nix-env -p /nix/var/nix/profiles/system --set /run/current-system
      '';

  };

}
