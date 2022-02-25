# This module adds the calamares inetaller to the basic graphical NixOS
# installation CD.

{ pkgs, ... }:
let
  calamares-nixos-autostart = (pkgs.makeAutostartItem { name = "calamares"; package = pkgs.calamares-nixos; });
in
{
  imports = [ ./installation-cd-graphical-base.nix ];
  environment.systemPackages = [
    # Calamares for graphical installation
    pkgs.libsForQt5.kpmcore
    pkgs.calamares-nixos
    calamares-nixos-autostart
    pkgs.calamares-nixos-extensions
  ];
}
