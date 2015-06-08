{ stdenv, pkgs, fetchurl, fetchgit,
  nodejs
}:
let
  # When upgrading node.nix / node packages:
  #   fetch package.json from Zed's repository
  #   run `npm2nix package.json node.nix`
  #   and replace node.nix with new one
  nodePackages = import ../../../../pkgs/top-level/node-packages.nix {
    inherit pkgs;
    inherit (pkgs) stdenv nodejs fetchurl fetchgit;
    neededNatives = [ pkgs.python ] ++ pkgs.lib.optional pkgs.stdenv.isLinux pkgs.utillinux;
    self = nodePackages;
    generated = ./node.nix;
  };
in
stdenv.mkDerivation rec {
    name = "popcorntime-" + version;
    version = "0.3.7-2";

    src = fetchgit {
      url = "https://git.popcorntime.io/popcorntime/desktop.git";
      rev = "refs/tags/v0.3.7.2";
      sha256 = "0f211csp4d7p8cxa8gnxczc7w5n1mps8jix0h9i42nd8pm49w7xn";
    };

    buildInputs = [ nodejs
    ];

    dontBuild = true;

    installPhase = ''
      ${pkgs.bash}/bin/sh dist/linux/exec_installer.sh
    '';

    meta = with stdenv.lib; {
      homepage = http://kodi.tv/;
      description = "Media center";
      license = stdenv.lib.licenses.gpl2;
      platforms = platforms.linux;
      maintainers = with maintainers; [ iElectric titanous edwtjo ];
    };
}