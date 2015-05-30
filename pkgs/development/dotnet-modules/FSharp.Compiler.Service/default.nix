{ stdenv, fetchgit, buildDotnetPackage, fsharp, dotnetPackages }:

buildDotnetPackage rec {
  baseName = "FSharp.Compiler.Service";
  version = "0.0.89";

  src = fetchgit {
    url = "https://github.com/fsharp/FSharp.Compiler.Service/";
    rev = "55a8143a82bb31c3e8c1ad2af64eb64162fed0d7";
    sha256 = "1aqz6nqwfvq4bb8vf4zdbd69kqxxz27v9akw6xi80dhf9dvphc9j";
  };

  buildInputs = [
    fsharp
    dotnetPackages.nUnit
  ];

  outputFiles = [ "bin/v4.5/*" ];
  dllFiles = [ "[CF]Sharp*.dll" ];

  meta = {
    description = "The F# compiler services package is a component derived from the F# compiler source code that exposes additional functionality for implementing F# language bindings";
    homepage = "http://fsharp.github.io/FSharp.Compiler.Service/";
    license = stdenv.lib.licenses.asl20;
    maintainers = with stdenv.lib.maintainers; [ obadz ];
    platforms = with stdenv.lib.platforms; linux;
  };
}
