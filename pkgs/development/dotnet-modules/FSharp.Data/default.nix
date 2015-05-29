{ stdenv, fetchurl, buildDotnetPackage, fsharp, dotnetPackages }:

buildDotnetPackage rec {
  baseName = "FSharp.Data";
  version = "2.2.2";

  src = fetchurl {
    name = "${baseName}-${version}.tar.gz";
    url = "https://github.com/fsharp/FSharp.Data/archive/${version}.tar.gz";
    sha256 = "1li33ydjxz18v8siw53vv1nmkp5w7sdlsjcrfp6dzcynpvwbjw3s";
  };

  buildInputs = [ fsharp ];

  fileProvidedTypes = fetchurl {
    name = "ProvidedTypes.fs";
    url = https://raw.githubusercontent.com/fsprojects/FSharp.TypeProviders.StarterPack/877014bfa6244ac382642e113d7cd6c9bc27bc6d/src/ProvidedTypes.fs;
    sha256 = "1lb056v1xld1rfx6a8p8i2jz8i6qa2r2823n5izsf1qg1qgf2980";
  };

  fileDebugProvidedTypes = fetchurl {
    name = "DebugProvidedTypes.fs";
    url = https://raw.githubusercontent.com/fsprojects/FSharp.TypeProviders.StarterPack/877014bfa6244ac382642e113d7cd6c9bc27bc6d/src/DebugProvidedTypes.fs;
    sha256 = "1whyrf2jv6fs7kgysn2086v15ggjsd54g1xfs398mp46m0nxp91f";
  };

  preConfigure = ''
     # Copy single-files-in-git-repos
     mkdir -p "paket-files/fsprojects/FSharp.TypeProviders.StarterPack/src"
     cp -v "${fileProvidedTypes}" "paket-files/fsprojects/FSharp.TypeProviders.StarterPack/src/ProvidedTypes.fs"
     cp -v "${fileDebugProvidedTypes}" "paket-files/fsprojects/FSharp.TypeProviders.StarterPack/src/DebugProvidedTypes.fs"
  '';

  xBuildFiles = [ "src/FSharp.Data.fsproj" "src/FSharp.Data.DesignTime.fsproj" ];
  outputFiles = [ "bin/*.dll" "bin/*.xml" ];
  dllFiles = [ "*.dll" ];

  meta = {
    description = "F# Data: Library for Data Access";
    homepage = "http://fsharp.github.io/FSharp.Data/";
    license = stdenv.lib.licenses.asl20;
    maintainers = with stdenv.lib.maintainers; [ obadz ];
    platforms = with stdenv.lib.platforms; linux;
  };
}
