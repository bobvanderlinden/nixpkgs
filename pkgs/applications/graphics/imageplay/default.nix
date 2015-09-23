{ stdenv, fetchFromGitHub, freeimage, opencv, qt5, makeWrapper }:

stdenv.mkDerivation rec {
  name = "imageplay-${version}";
  version = "6.0.0-rc.0";

  src = fetchFromGitHub {
    owner = "cpvrlab";
    repo = "ImagePlay";
    rev = "${version}";
    sha256 = "1cfd93pd0n957j8lrizd0k0miyvpx4z0ahkm4wyshlf31j8xdjr3";
  };


  buildInputs = [ qt5.base freeimage opencv makeWrapper ];

  configurePhase = ''
    qmake -recursive
  '';

  installPhase = ''
    mkdir -p $out/{bin,opt/imageplay}
    mv _bin/Release/linux/* $out/opt/imageplay/
    ln -s $out/opt/imageplay/ImagePlay $out/bin/imageplay
  '';

  meta = with stdenv.lib; {
    description = "A rapid prototyping application for image processing";
    homepage = http://imageplay.io/;
    license = licenses.gpl3;
    platforms = with platforms; linux;
    maintainers = with maintainers; [ bobvanderlinden ];
  };
}
