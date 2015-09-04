{ lib, stdenv, fetchurl, runCommand, makeWrapper, node_webkit_0_9 }:

let
  version = "0.3.8-3";

  popcorntimePackage = stdenv.mkDerivation rec {
    name = "popcorntime-${version}";
    src = if stdenv.system == "x86_64-linux" then
        fetchurl {
          url = "http://get.popcorntime.io/build/Popcorn-Time-${version}-Linux-64.tar.xz";
         sha256 = "0q8c6m9majgv5a6hjl1b2ndmq4xx05zbarsydhqkivhh9aymvxgm";
        }
      else if stdenv.system == "i686-linux" then
        fetchurl {
          url = "https://get.popcorntime.io/build/Popcorn-Time-${version}-Linux-32.tar.xz";
         sha256 = "1dz1cp31qbwamm9pf8ydmzzhnb6d9z73bigdv3y74dgicz3dpr92";
        }
      else throw "Unsupported system ${stdenv.system}";
    sourceRoot = ".";
    installPhase = ''
      mkdir -p $out
      cp -r * $out/
      rm $out/Popcorn-Time $out/install
    '';
  };
in
  runCommand "popcorntime-${version}" {
    buildInputs = [ makeWrapper ];
    meta = with stdenv.lib; {
      homepage = http://popcorntime.io/;
      description = "An application that streams movies and TV shows from torrents";
      license = stdenv.lib.licenses.gpl3;
      platforms = platforms.linux;
      maintainers = with maintainers; [ bobvanderlinden ];
    };
  }
  ''
    mkdir -p $out/bin
    makeWrapper ${node_webkit_0_9}/bin/nw $out/bin/popcorntime --add-flags "${popcorntimePackage}"
  ''
