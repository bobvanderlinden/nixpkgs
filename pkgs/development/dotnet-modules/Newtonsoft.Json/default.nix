{ stdenv, fetchurl, makeWrapper, mono, dotnetbuildhelpers, fsharp, pkgconfig, dotnetPackages }:

stdenv.mkDerivation rec {
  baseName = "Newtonsoft.Json";
  version = "6.0.8";
  name = "${baseName}-${version}";

  src = fetchurl {
    name = "${name}.tar.gz";
    url = "https://github.com/JamesNK/Newtonsoft.Json/archive/${version}.tar.gz";
    sha256 = "14znf5mycka578bxjnlnz6a3f9nfkc682hgmgg42gdzksnarvhlm";
  };

  buildInputs = [
    makeWrapper
    mono
    dotnetbuildhelpers
    fsharp
    pkgconfig
    dotnetPackages.nUnit
    dotnetPackages.systemCollectionsImmutable
    dotnetPackages.autofac
  ];

  patches = [ ./references.patch ];

  configurePhase = ''
     # Just to make sure there's no attempt to call these executables
     rm -rvf Tools
  '';

  buildPhase = ''
    xbuild Src/Newtonsoft.Json.sln /p:Configuration=Release
  '';

  installPhase = ''
    mkdir -p "$out"/opt/dotnet/${baseName}
    cp -rv Src/Newtonsoft.Json/bin/Release/* "$out"/opt/dotnet/${baseName}
    for dll in "$out"/opt/dotnet/${baseName}/Net45/*.dll 
    do
      create-pkg-config-for-dll.sh "$out/lib/pkgconfig" "$dll"
    done
  '';

  dontStrip = true;

  meta = {
    description = "Popular high-performance JSON framework for .NET";
    homepage = "http://www.newtonsoft.com/json";
    license = stdenv.lib.licenses.mit;
    maintainers = with stdenv.lib.maintainers; [ obadz ];
    platforms = with stdenv.lib.platforms; linux;
  };
}
