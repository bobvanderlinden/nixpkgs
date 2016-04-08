# This module defines a small Cerana environment.

{ config, lib, ... }:

{
  imports =
    [ ./cerana-base.nix
      ../../profiles/minimal.nix
    ];
}
