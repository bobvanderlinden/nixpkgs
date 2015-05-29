{ stdenv, fetchgit, buildDotnetPackage, unzip }:

buildDotnetPackage {
  baseName = "nuget";
  version = "2.8.5";

  src = fetchgit {
    url = "https://github.com/mono/nuget-binary.git";
    rev = "da1f2102f8172df6f7a1370a4998e3f88b91c047";
    sha256 = "1hbnckc4gvqkknf8gh1k7iwqb4vdzifdjd19i60fnczly5v8m1c3";
  };

  buildInputs = [ unzip ];

  phases = [ "unpackPhase" "installPhase" ];

  outputFiles = [ "*" ];
  dllFiles = [ "NuGet*.dll" ];
  exeFiles = [ "NuGet.exe" ];
}
