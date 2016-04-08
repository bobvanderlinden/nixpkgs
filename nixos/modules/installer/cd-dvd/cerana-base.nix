# This module contains the basic configuration for building Cerana
# media

{ config, lib, pkgs, ... }:

with lib;

{
  imports =
    [ ./cerana.nix

      # Profiles of this basic installation CD.
      ../../profiles/all-hardware.nix
      ../../profiles/base.nix
      ../../profiles/installation-device.nix
    ];

  # Allow the user to log in as root without a password.
  users.extraUsers.root.initialHashedPassword = "$6$.QTPbmIm$BhGeTVViy9f0eQHqNKuMV1sa1jfQr.vAa6n4tz89zVFLGg0iOoertHybaS5sD9LUXjuo3crV5Qu06CEO95tmU/";
}
