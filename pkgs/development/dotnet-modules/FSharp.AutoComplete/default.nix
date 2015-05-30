{ stdenv, fetchurl, buildDotnetPackage, fsharp, dotnetPackages }:

buildDotnetPackage rec {
  baseName = "FSharp.AutoComplete";
  version = "0.16.0";

  src = fetchurl {
    name = "${baseName}-${version}.tar.gz";
    url = "https://github.com/fsharp/FSharp.AutoComplete/archive/${version}.tar.gz";
    sha256 = "0mwp456zfw1sjy2mafz2shx0sjn4f858pfnsmawy50g8l2znw8qg";
  };

  buildInputs = [
    fsharp
    dotnetPackages.fsharpCompilerService
    dotnetPackages.newtonsoftJson
    dotnetPackages.nDeskOptions
  ];

 outputFiles = [ "FSharp.AutoComplete/bin/Release/*" ];
  dllFiles = [ "FSharp.CompilerBinding.dll" ];
  exeFiles = [ "fsautocomplete.exe" ];

  meta = {
    description = "This project provides a command-line interface to the FSharp.Compiler.Service project. It is intended to be used as a backend service for rich editing or 'intellisense' features for editors.";
    homepage = "https://github.com/fsharp/FSharp.AutoComplete";
    license = stdenv.lib.licenses.asl20;
    maintainers = with stdenv.lib.maintainers; [ obadz ];
    platforms = with stdenv.lib.platforms; linux;
  };
}
