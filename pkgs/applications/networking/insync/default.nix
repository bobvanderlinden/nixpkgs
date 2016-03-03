{stdenv, fetchurl, dpkg, makeWrapper}:

stdenv.mkDerivation rec {
  name = "insync-${version}";
  version = "1.3.6.36076";
  
  src = fetchurl {
    url = "http://s.insynchq.com/builds/insync_${version}-trusty_amd64.deb";
    sha256 = "144d83axg09dk3736ar2kr34asca80w4mhabwbaby9xz3dly8cmz";
  };

  buildInputs = [ dpkg makeWrapper ];

  unpackPhase = "true";

  installPhase =
    ''
      dpkg-deb -x $src $out
      mv $out/usr/* $out/
      rm -rf $out/usr
    '';

  meta = {
    homepage = http://insync.com/;
    license = stdenv.lib.licenses.gpl2Plus;
    description = "Console-based network statistics utility for Linux";
  };
}