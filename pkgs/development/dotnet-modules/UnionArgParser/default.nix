{ stdenv, fetchgit, buildDotnetPackage, fsharp, dotnetPackages }:

buildDotnetPackage rec {
  baseName = "UnionArgParser";
  version = "0.8.7";

  src = fetchgit {
    url = "https://github.com/nessos/UnionArgParser";
    rev = "acaeb946e53cbb0bd9768977c656b3242146070a";
    sha256 = "0m5bkqjfzvm0bzccd1xf1kjmba7fs9622dlivw3kidazgvld318m";
  };

  buildInputs = [
    fsharp
    dotnetPackages.nUnit
    dotnetPackages.fsUnit
  ];

  outputFiles = [ "bin/net40" ];
  dllFiles = [ "net40/UnionArgParser*.dll" ];

  meta = {
    description = "A declarative CLI argument/XML configuration parser for F# applications.";
    homepage = "http://nessos.github.io/UnionArgParser/";
    license = stdenv.lib.licenses.mit;
    maintainers = with stdenv.lib.maintainers; [ obadz ];
    platforms = with stdenv.lib.platforms; linux;
  };
}
