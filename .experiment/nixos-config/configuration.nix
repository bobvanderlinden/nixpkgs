{ config, pkgs, ... }:

{
  imports = [ <nixpkgs/nixos/modules/virtualisation/qemu-vm.nix> ];
  systemd.additionalUpstreamSystemUnits = [ "debug-shell.service" ];

  virtualisation = {
    memorySize = "1G";
    # useEFIBoot = true;
    # useBootLoader = true;
    graphics = false;
  };
  # virtualisation.useBootLoader = true;
  # virtualisation.useEFIBoot = true;
  boot.kernelParams = [
    # "systemd.log_level=debug"
    "systemd.log_target=console"
    # "console=ttyS0,38400"
    "console=ttyS0"
  ];

  # services.xserver = {
  #   enable = true;
  #   displayManager.defaultSession = "none+i3";
  #   displayManager.lightdm.enable = true;
  #   desktopManager.xterm.enable = false;
  #   windowManager.i3 = {
  #     enable = true;
  #     extraPackages = with pkgs; [
  #       dmenu i3status i3lock
  #     ];
  #   };
  # };

  system.name = "nixos";

  system.stateVersion = "21.03"; # Did you read the comment?

}

