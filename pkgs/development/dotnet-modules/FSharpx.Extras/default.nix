{ stdenv, fetchurl, buildDotnetPackage, fsharp, dotnetPackages }:

buildDotnetPackage rec {
  baseName = "FSharpx.Extras";
  version = "1.8.41";

  src = fetchurl {
    name = "${baseName}-${version}.tar.gz";
    url = "https://github.com/fsprojects/FSharpx.Extras/archive/${version}.tar.gz";
    sha256 = "102z5bvk3ffi1crgyp51488vamv41fsf61n8x8pdiznq155zydhl";
  };

  extraBuildInputs = [
    fsharp
    dotnetPackages.nUnit
    dotnetPackages.fsCheck
    dotnetPackages.fsCheckNunit
    dotnetPackages.fsUnit
  ];

  patches = [ ./disable_excel.patch ];

  xBuildFiles = [ "FSharpx.WithTypeProviders.sln" ];
  outputFiles = [ "build/*" ];
  dllFiles = [ "FSharpx*.dll" ];

  meta = {
    description = "FSharpx.Extras is a collection of libraries and tools for use with F#.";
    homepage = "http://fsprojects.github.io/FSharpx.Extras/";
    license = stdenv.lib.licenses.asl20;
    maintainers = with stdenv.lib.maintainers; [ obadz ];
    platforms = with stdenv.lib.platforms; linux;
  };
}
