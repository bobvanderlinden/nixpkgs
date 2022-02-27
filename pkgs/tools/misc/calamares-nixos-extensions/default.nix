{ stdenv, lib, fetchurl
}:

stdenv.mkDerivation rec {
  pname = "calamares-nixos-extensions";
  version = "0.0.1";

  src = fetchurl {
    url = "https://github.com/vlinkz/${pname}/archive/refs/tags/${version}.tar.gz";
    sha256 = "sha256-Ua7NJXwu9QsWrTzRKMPQnlkr7lECBNAKBRjD6bwCHa8=";
  };

  installPhase = ''
    mkdir -p $out/{lib,share}/calamares
    cp -r modules $out/lib/calamares/
    cp -r config/* $out/share/calamares/
    cp -r branding $out/share/calamares/
  '';

  meta = with lib; {
    description = "Calamares modules for NixOS";
    license = with licenses; [ gpl3Plus bsd2 ];
    platforms = platforms.linux;
  };
}
