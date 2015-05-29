{ stdenv, fetchurl, buildDotnetPackage, fsharp, dotnetPackages }:

buildDotnetPackage rec {
  baseName = "Newtonsoft.Json";
  version = "6.0.8";

  src = fetchurl {
    name = "${baseName}-${version}.tar.gz";
    url = "https://github.com/JamesNK/Newtonsoft.Json/archive/${version}.tar.gz";
    sha256 = "14znf5mycka578bxjnlnz6a3f9nfkc682hgmgg42gdzksnarvhlm";
  };

  buildInputs = [
    fsharp
    dotnetPackages.nUnit
    dotnetPackages.systemCollectionsImmutable
    dotnetPackages.autofac
  ];

  patches = [ ./references.patch ];

  postConfigure = ''
     # Just to make sure there's no attempt to call these executables
     rm -rvf Tools
  '';

  xBuildFiles = [ "Src/Newtonsoft.Json.sln" ];
  outputFiles = [ "Src/Newtonsoft.Json/bin/Release/Net45/*" ];
  dllFiles = [ "*.dll" ];

  meta = {
    description = "Popular high-performance JSON framework for .NET";
    homepage = "http://www.newtonsoft.com/json";
    license = stdenv.lib.licenses.mit;
    maintainers = with stdenv.lib.maintainers; [ obadz ];
    platforms = with stdenv.lib.platforms; linux;
  };
}
