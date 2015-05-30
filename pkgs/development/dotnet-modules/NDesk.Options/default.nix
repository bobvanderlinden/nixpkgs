{ stdenv, fetchurl, mono, pkgconfig, dotnetPackages }:

stdenv.mkDerivation rec {
  baseName = "NDesk.Options";
  version = "0.2.1";
  name = "${baseName}-${version}";

  src = fetchurl {
    name = "${baseName}-${version}.tar.gz";
    url = "http://www.ndesk.org/archive/ndesk-options/ndesk-options-0.2.1.tar.gz";
    sha256 = "1y25bfapafwmifakjzyb9c70qqpvza8g5j2jpf08j8wwzkrb6r28";
  };

  buildInputs = [
    mono
    pkgconfig
  ];

  preConfigure = ''
    substituteInPlace configure --replace gmcs mcs
  '';

  postInstall = ''
    # Otherwise pkg-config won't find it and the DLL will get duplicated
    ln -sv $out/lib/pkgconfig/ndesk-options.pc $out/lib/pkgconfig/NDesk.Options.pc
  '';

  dontStrip = true;

  meta = {
    description = "NDesk.Options is a callback-based program option parser for C#.";
    homepage = "http://www.ndesk.org/Options";
    license = stdenv.lib.licenses.mit;
    maintainers = with stdenv.lib.maintainers; [ obadz ];
    platforms = with stdenv.lib.platforms; linux;
  };
}
