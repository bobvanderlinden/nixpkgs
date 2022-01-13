{ lib, fetchurl, boost, cmake, extra-cmake-modules, kparts, kpmcore
, kservice, libatasmart, libxcb, libyamlcpp, libpwquality, parted, polkit-qt, python, qtbase
, qtquickcontrols, qtsvg, qttools, qtwebengine, util-linux, tzdata
, ckbcomp, xkeyboard_config, mkDerivation, calamares-nixos
}:

mkDerivation rec {
  pname = "calamares-nixos-extensions";
  version = "0.0.1";

  # release including submodule
  src = fetchurl {
    url = "https://github.com/vlinkz/${pname}/archive/refs/heads/calamares.tar.gz";
    sha256 = "sha256-4O3TlPFtQViA7+tss5/6oRqMoqKz5vEP95UqD+apVkc=";
  };

  nativeBuildInputs = [ cmake extra-cmake-modules ];
  buildInputs = [
    boost kparts.dev kpmcore.out kservice.dev
    libatasmart libxcb libyamlcpp libpwquality parted polkit-qt python
    qtbase qtquickcontrols qtsvg qttools qtwebengine.dev util-linux calamares-nixos
  ];

  cmakeFlags = [
    "-DPYTHON_LIBRARY=${python}/lib/lib${python.libPrefix}.so"
    "-DPYTHON_INCLUDE_DIR=${python}/include/${python.libPrefix}"
    "-DCMAKE_VERBOSE_MAKEFILE=True"
    "-DCMAKE_BUILD_TYPE=Release"
    "-DWITH_PYTHONQT:BOOL=ON"
  ];

  meta = with lib; {
    description = "Calamares modules for NixOS";
    license = with licenses; [ gpl3Plus bsd2 ];
    #maintainers = with maintainers; [ manveru ];
    platforms = platforms.linux;
  };
}
