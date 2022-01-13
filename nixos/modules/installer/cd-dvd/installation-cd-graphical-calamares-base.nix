# This module contains the basic configuration for building a graphical NixOS
# installation CD.

{ lib, pkgs, ... }:

with lib;
let
  calamares-nixos-autostart = (pkgs.makeAutostartItem { name = "calamares"; package = pkgs.calamares-nixos; });
in
{
  imports = [ ./installation-cd-base.nix ];

  # Whitelist wheel users to do anything
  # This is useful for things like pkexec
  #
  # WARNING: this is dangerous for systems
  # outside the installation-cd and shouldn't
  # be used anywhere else.
  security.polkit.extraConfig = ''
    polkit.addRule(function(action, subject) {
      if (subject.isInGroup("wheel")) {
        return polkit.Result.YES;
      }
    });
  '';

  services.xserver.enable = true;

  # Provide networkmanager for easy wireless configuration.
  networking.networkmanager.enable = true;
  networking.wireless.enable = mkForce false;

  # KDE complains if power management is disabled (to be precise, if
  # there is no power management backend such as upower).
  powerManagement.enable = true;

  # Enable sound in graphical iso's.
  hardware.pulseaudio.enable = true;

  # Spice guest additions
  services.spice-vdagentd.enable = true;

  environment.systemPackages = [
    # Include gparted for partitioning disks.
    pkgs.gparted

    # Include some editors.
    pkgs.vim
    pkgs.bvi # binary editor
    pkgs.joe

    # Include some version control tools.
    pkgs.git

    # Firefox for reading the manual.
    pkgs.firefox

    pkgs.glxinfo
    # Calamares for graphical installation
    pkgs.libsForQt5.kpmcore
    pkgs.calamares-nixos
    calamares-nixos-autostart
    pkgs.calamares-nixos-extensions
  ];

}
