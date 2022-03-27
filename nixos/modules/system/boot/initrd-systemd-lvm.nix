{ lib, pkgs, config, ... }:
let
  cfg = config.boot.initrd.systemd.lvm;
in
{
  options = with lib; {
    boot.initrd.systemd.lvm = {
      package = mkOption {
        type = types.package;
        default = pkgs.lvm2;
        internal = true;
        defaultText = literalExpression "pkgs.lvm2";
        description = "lvm2 package to use in systemd initrd";
      };
    };
  };

  config = {
    boot.initrd.systemd = {
      packages = [
        cfg.package
      ];

      initrdBin = [
        cfg.package
      ];

      udev.packages = [
        cfg.package.out
      ];

      objects = [
        {
          object = builtins.toFile "lvm.conf" ''
            config {}
          '';
          symlink = "/etc/lvm/lvm.conf";
        }
      ];
    };
  };
}
