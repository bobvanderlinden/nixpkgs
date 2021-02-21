#!/bin/sh

nixos-rebuild \
  -I nixpkgs=$HOME/projects/nixpkgs \
  -I nixos-config=$HOME/projects/nixpkgs/.experiment/nixos-config/configuration.nix \
  build-vm --show-trace \
&& result/bin/run-nixos-vm