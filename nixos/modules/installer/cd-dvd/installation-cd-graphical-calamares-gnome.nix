# This module defines a NixOS installation CD that contains GNOME.

{ pkgs, lib, ... }:

with lib;

{
  imports = [ ./installation-cd-graphical-calamares-base.nix ];

  isoImage.edition = "gnome";
  services.xserver.desktopManager.gnome = {
    # Add firefox to favorite-apps
    favoriteAppsOverride = ''
      [org.gnome.shell]
      favorite-apps=[ 'firefox.desktop', 'org.gnome.Nautilus.desktop', 'org.gnome.Terminal.desktop', 'calamares.desktop' ]
    '';
    enable = true;
  };

  qt5 = {
    platformTheme = "gnome";
  };

  environment.sessionVariables = {
    "QT_QPA_PLATFORMTHEME" = "gnome";
  };

  services.xserver.displayManager = {
    gdm = {
      enable = true;
      # autoSuspend makes the machine automatically suspend after inactivity.
      # It's possible someone could/try to ssh'd into the machine and obviously
      # have issues because it's inactive.
      # See:
      # * https://github.com/NixOS/nixpkgs/pull/63790
      # * https://gitlab.gnome.org/GNOME/gnome-control-center/issues/22
      autoSuspend = false;
    };
    autoLogin = {
      enable = true;
      user = "nixos";
    };
  };

  # Override GNOME defaults
  services.xserver.desktopManager.gnome.extraGSettingsOverrides = ''
  [org.gnome.desktop.interface]
  gtk-theme='Adwaita-dark'
  [org.gnome.shell]
  welcome-dialog-last-shown-version='4294967295'
  '';
}
