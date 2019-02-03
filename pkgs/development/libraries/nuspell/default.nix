{ stdenv, fetchurl, ncurses, readline, autoreconfHook, pkgconfig, boost, libiconv, icu }:
let
  catch_hpp = fetchurl {
    url = "https://github.com/catchorg/Catch2/releases/download/v2.4.1/catch.hpp";
    sha256 = "17lmadd2d3pvxyv01w52hs9wybkcra97rs80pd908gw1rcq01fd4";
  };
  catch_reporter_tap_hpp = fetchurl {
    url = "https://github.com/catchorg/Catch2/releases/download/v2.4.1/catch_reporter_tap.hpp";
    sha256 = "1hqqyri3b8ipnpajy5hbdjdz217jwann52pmq5ynpdnp81mqslrs";
  };
in
stdenv.mkDerivation rec {
  version = "2.1.0";
  name = "nuspell-${version}";

  postPatch = ''
    ln -s ${catch_hpp} ./tests/catch.hpp
    ln -s ${catch_reporter_tap_hpp} ./tests/catch_reporter_tap.hpp
  '';

  src = fetchurl {
    url = "https://github.com/nuspell/nuspell/archive/v${version}.tar.gz";
    sha256 = "10j4psc6h4mzr5y2dihhxgfkdbxlxxbwdch5wj6ncvzk7s07xzwm";
  };

  outputs = [ "bin" "dev" "out" "man" ];

  buildInputs = [ pkgconfig ncurses readline boost libiconv icu ];
  nativeBuildInputs = [ autoreconfHook ];

  meta = with stdenv.lib; {
    homepage = http://github.com/nuspell/nuspell;
    description = "Spell checking library";
    platforms = platforms.all;
    license = with licenses; [ gpl2 lgpl21 mpl11 ];
    maintainers = with stdenv.lib.maintainers; [ bobvanderlinden ];
  };
}
