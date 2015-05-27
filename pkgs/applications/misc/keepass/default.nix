{ stdenv, fetchurl, makeWrapper, unzip, makeDesktopItem, mono, dotnetbuildhelpers }:

stdenv.mkDerivation rec {
  name = "keepass-${version}";
  version = "2.29";

  src = fetchurl {
    url = "mirror://sourceforge/keepass/KeePass-${version}-Source.zip";
    sha256 = "051s0aznyyhbpdbly6h5rs0ax0zvkp45dh93nmq6lwhicswjwn5m";
  };

  sourceRoot = ".";

  buildInputs = [
    unzip
    mono
    dotnetbuildhelpers
    makeWrapper
  ];

  patches = [ ./keepass.patch ];

  configurePhase = "rm -rvf Build/*";

  buildPhase = "xbuild /p:Configuration=Release";

  desktopItem = makeDesktopItem {
    name = "keepass";
    exec = "keepass";
    comment = "Password manager";
    desktopName = "Keepass";
    genericName = "Password manager";    
    categories = "Application;Other;";
  };

  installPhase = ''
    mkdir -p "$out/opt/dotnet/Keepass/bin"
    mkdir -p "$out/opt/dotnet/Keepass/lib"

    cp -v Build/KeePass/Release/* "$out/opt/dotnet/Keepass/bin"
    cp -v Build/KeePassLib/Release/* "$out/opt/dotnet/Keepass/lib"

    mkdir -p "$out/bin"
    mkdir -p "$out/lib"
    mkdir -p "$out/share/applications"

    makeWrapper "${mono}/bin/mono $out/opt/dotnet/Keepass/bin/KeePass.exe" "$out/bin/keepass" 
    create-pkg-config-for-dll.sh "$out/lib/pkgconfig" "$out/opt/dotnet/Keepass/lib/KeePassLib.dll"
    cp ${desktopItem}/share/applications/* $out/share/applications
  '';

  meta = {
    description = "GUI password manager with strong cryptography";
    homepage = http://www.keepass.info/;
    maintainers = with stdenv.lib.maintainers; [ amorsillo obadz ];
    platforms = with stdenv.lib.platforms; all;
    license = stdenv.lib.licenses.gpl2;
  };
}
