{ stdenv, fetchurl, makeWrapper, mono, dotnetbuildhelpers, fsharp, pkgconfig, dotnetPackages }:

stdenv.mkDerivation rec {
  name = "FSharpx.Extras-${version}";
  version = "1.8.41";

  src = fetchurl {
    name = "${name}.tar.gz";
    url = "https://github.com/fsprojects/FSharpx.Extras/archive/${version}.tar.gz";
    sha256 = "102z5bvk3ffi1crgyp51488vamv41fsf61n8x8pdiznq155zydhl";
  };

  buildInputs = [
    makeWrapper
    mono
    dotnetbuildhelpers
    fsharp
    pkgconfig
    dotnetPackages.nUnit
    dotnetPackages.fsCheck
    dotnetPackages.fsCheckNunit
    dotnetPackages.fsUnit
  ];

  patches = [ ./fsharpx.patch ];

  configurePhase = ''
     # Just to make sure there's no attempt to call these executables
     sed -i -e "s,mono --runtime=.* \$(NuGetExePath),true," .nuget/NuGet.targets
     rm -vf .nuget/NuGet.exe
     touch .nuget/NuGet.exe # File needs to exist
  '';

  buildPhase = ''
    xbuild FSharpx.WithTypeProviders.sln
  '';

  installPhase = ''
    mkdir -p "$out"/opt/dotnet/FSharpx.Extras
    cp -rv build/DataStructures/* "$out"/opt/dotnet/FSharpx.Extras
    for dll in "$out"/opt/dotnet/FSharpx.Extras/FSharpx*.dll
    do
      create-pkg-config-for-dll.sh "$out/lib/pkgconfig" "$dll"
    done
  '';

  dontStrip = true;

  meta = {
    description = "FSharpx.Extras is a collection of libraries and tools for use with F#.";
    homepage = "http://fsprojects.github.io/FSharpx.Extras/";
    license = stdenv.lib.licenses.asl20;
    maintainers = with stdenv.lib.maintainers; [ obadz ];
    platforms = with stdenv.lib.platforms; linux;
  };
}
