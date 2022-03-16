{
  config,
  lib,
  utils,
  pkgs,
  ...
}:
with lib; let
  cfg = config.boot.initramfs;
  make-initramfs = pkgs.callPackage ./make-initramfs.nix;
in {
  options = {
    boot.initramfs = {
      enable = mkEnableOption ''
        Whether to enable the NixOS initial RAM disk (initramfs).
      '';

      objects = with types;
        mkOption {
          description = ''
            File objects that will be included into initramfs.
          '';
          type = listOf (submodule {
            options.object = mkOption {
              description = ''
                Path of object to include in initramfs.
              '';
              type = path;
              example = literalExpression ''
                "''${bash}/bin/bash"
              '';
            };
            options.symlink = mkOption {
              description = ''
                Symlink that will be created on initramfs that links to the objects path.
              '';
              type = nullOr path;
              default = null;
              example = "/etc/modules-load.d/nixos.conf";
            };
            options.executable = mkOption {
              type = bool;
              default = false;
              example = true;
            };
          });
        };
    };
  };

  config = mkIf cfg.enable {
    assertions = [
      {
        assertion = !(config.boot.initrd.enable && config.boot.initramfs.enable);
        message = "Cannot set initrd and initramfs";
      }
    ];

    system.requiredKernelConfig = with config.lib.kernelConfig; [
      (isYes "TMPFS")
      (isYes "BLK_DEV_INITRD")
    ];

    system.build.initialRamdisk = make-initramfs {contents = cfg.objects;};

    # Script to add secret files to the initrd at bootloader update time
    system.build.initialRamdiskSecretAppender = let
      initialRamdisk = config.system.build.initialRamdisk;
      compressorExe = initialRamdisk.compressorExecutableFunction pkgs;
    in
      pkgs.writeScriptBin "append-initrd-secrets"
      ''
        #!${pkgs.bash}/bin/bash -e
        function usage {
          echo "USAGE: $0 INITRD_FILE" >&2
          echo "Appends this configuration's secrets to INITRD_FILE" >&2
        }

        if [ $# -ne 1 ]; then
          usage
          exit 1
        fi

        if [ "$1"x = "--helpx" ]; then
          usage
          exit 0
        fi

        ${
          lib.optionalString (config.boot.initrd.secrets == {})
          "exit 0"
        }

        export PATH=${pkgs.coreutils}/bin:${pkgs.cpio}/bin:${pkgs.gzip}/bin:${pkgs.findutils}/bin

        function cleanup {
          if [ -n "$tmp" -a -d "$tmp" ]; then
            rm -fR "$tmp"
          fi
        }
        trap cleanup EXIT

        tmp=$(mktemp -d ''${TMPDIR:-/tmp}/initrd-secrets.XXXXXXXXXX)

        ${
          lib.concatStringsSep "\n" (mapAttrsToList (
            dest: source: let
              source' =
                if source == null
                then dest
                else toString source;
            in ''
              mkdir -p $(dirname "$tmp/.initrd-secrets/${dest}")
              cp -a ${source'} "$tmp/.initrd-secrets/${dest}"
            ''
          )
          config.boot.initrd.secrets)
        }

        (cd "$tmp" && find . -print0 | sort -z | cpio --quiet -o -H newc -R +0:+0 --reproducible --null) | \
          ${compressorExe} ${lib.escapeShellArgs initialRamdisk.compressorArgs} >> "$1"
      '';
  };
}
