{ stdenv, fetchFromGitHub, freeimage, opencv, qt5, makeWrapper }:

stdenv.mkDerivation rec {
  name = "imageplay-${version}";
  version = "6.0.0-beta.3";

  src = fetchFromGitHub {
    owner = "cpvrlab";
    repo = "ImagePlay";
    rev = "${version}";
    sha256 = "1wavfg0q8586bygh454fzqwc2rxj71aih7s8nwxxpnmdzabsqjlz";
  };


  buildInputs = [ qt5.base freeimage opencv makeWrapper ];

  configurePhase = ''
    qmake -recursive
  '';

  installPhase = ''
    mkdir -p $out/{bin,lib,share/imageplay}
    mv _bin/Release/linux/ImagePlay $out/bin/imageplay
    mv _bin/Release/linux/*.a $out/lib/
    mv _bin/Release/linux/* $out/share/imageplay
    wrapProgram $out/bin/imageplay --set PWD $out/share/imageplay
  '';

  meta = with stdenv.lib; {
    description = "A rapid prototyping application for image processing";
    homepage = http://imageplay.io/;
    license = licenses.gpl3;
    platforms = with platforms; linux;
    maintainers = with maintainers; [ bobvanderlinden ];
  };
}
