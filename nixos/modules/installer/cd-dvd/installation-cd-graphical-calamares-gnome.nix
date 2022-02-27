# This module defines a NixOS installation CD that contains GNOME.

{ lib, ... }:

with lib;

{
  imports = [ ./installation-cd-graphical-calamares.nix ];

  isoImage.edition = "gnome";

  services.xserver.desktopManager.gnome = {
    # Add Firefox and other tools useful for installation to the launcher
    favoriteAppsOverride = ''
      [org.gnome.shell]
      favorite-apps=[ 'firefox.desktop', 'nixos-manual.desktop', 'org.gnome.Terminal.desktop', 'org.gnome.Nautilus.desktop', 'gparted.desktop', 'calamares.desktop' ]
    '';
    enable = true;
  };

  # Theme calamares with GNOME theme
  qt5 = {
    enable = true;
    platformTheme = "gnome";
  };

  # Session variable needed as calamares is launched as a superuser
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

  # Override GNOME defaults to disable GNOME tour
  services.xserver.desktopManager.gnome.extraGSettingsOverrides = ''
  [org.gnome.shell]
  welcome-dialog-last-shown-version='9999999999'
  '';

}
