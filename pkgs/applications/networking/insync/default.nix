{stdenv, fetchurl, dpkg, makeWrapper}:

stdenv.mkDerivation rec {
  name = "insync-${version}";
  version = "1.3.6.36076";
  
  src = fetchurl {
    url = "http://s.insynchq.com/builds/insync_${version}-trusty_amd64.deb";
    sha256 = "144d83axg09dk3736ar2kr34asca80w4mhabwbaby9xz3dly8cmz";
  };

  buildInputs = [ dpkg makeWrapper ];

  unpackPhase = ''
    dpkg -x $src unpacked
  '';

  installPhase =
    ''
      mkdir -p $out
      cp -r unpacked/* $out/
      mv -vi $out/usr/bin $out/bin
      substituteInPlace $out/bin/insync --replace /usr/lib/insync $out/usr/lib/insync
      substituteInPlace $out/bin/insync-headless --replace /usr/lib/insync $out/usr/lib/insync
      patchelf --set-interpreter "$(cat $NIX_CC/nix-support/dynamic-linker)" $out/usr/lib/insync/insync
    '';

  meta = {
    homepage = https://www.insynchq.com/;
    license = stdenv.lib.licenses.unfree;
    description = "Google Drive client that extends Drive's web functionality to your desktop";
  };
}