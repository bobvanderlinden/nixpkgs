{ stdenv, fetchurl, makeWrapper, mono, dotnetbuildhelpers, fsharp, pkgconfig, dotnetPackages }:

stdenv.mkDerivation rec {
  baseName = "FSharp.Data";
  version = "2.2.2";
  name = "${baseName}-${version}";

  src = fetchurl {
    name = "${name}.tar.gz";
    url = "https://github.com/fsharp/FSharp.Data/archive/${version}.tar.gz";
    sha256 = "1li33ydjxz18v8siw53vv1nmkp5w7sdlsjcrfp6dzcynpvwbjw3s";
  };

  buildInputs = [
    makeWrapper
    mono
    dotnetbuildhelpers
    fsharp
    pkgconfig
  ];

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

  configurePhase = ''
     # Copy single-files-in-git-repos
     mkdir -p "paket-files/fsprojects/FSharp.TypeProviders.StarterPack/src"
     cp -v "${fileProvidedTypes}" "paket-files/fsprojects/FSharp.TypeProviders.StarterPack/src/ProvidedTypes.fs"
     cp -v "${fileDebugProvidedTypes}" "paket-files/fsprojects/FSharp.TypeProviders.StarterPack/src/DebugProvidedTypes.fs"

     # Just to make sure there's no attempt to call these executables
     sed -i -e 's,mono --runtime=.* \$(.*),true,g' .paket/paket.targets
     rm -vf .paket/paket.bootstrapper.exe # Just to be sure
  '';

  buildPhase = ''
    export FSharpTargetsPath="${fsharp}/lib/mono/4.0/Microsoft.FSharp.Targets"
    xbuild src/FSharp.Data.fsproj
    xbuild src/FSharp.Data.DesignTime.fsproj
  '';

  installPhase = ''
    mkdir -p "$out"/opt/dotnet/${baseName}
    cp -rv bin/* "$out"/opt/dotnet/${baseName}
    for dll in "$out"/opt/dotnet/${baseName}/*.dll
    do
      create-pkg-config-for-dll.sh "$out/lib/pkgconfig" "$dll"
    done
  '';

  dontStrip = true;

  meta = {
    description = "F# Data: Library for Data Access";
    homepage = "http://fsharp.github.io/FSharp.Data/";
    license = stdenv.lib.licenses.asl20;
    maintainers = with stdenv.lib.maintainers; [ obadz ];
    platforms = with stdenv.lib.platforms; linux;
  };
}
