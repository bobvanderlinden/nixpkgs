{ stdenv, helperFunctions, makeWrapper, dotnetbuildhelpers, fetchgit, unzip, mono }:

let
  nugetBinary = fetchgit {
    url = "https://github.com/mono/nuget-binary.git";
    rev = "da1f2102f8172df6f7a1370a4998e3f88b91c047";
    sha256 = "1hbnckc4gvqkknf8gh1k7iwqb4vdzifdjd19i60fnczly5v8m1c3";
  };
  version = "2.8.5";
in
  helperFunctions.runCommand
    "nuget-binary"
    { preferLocalBuild = true; }
    ''
      mkdir -p "$out/opt/dotnet/nuget-binary"
      cp -v "${nugetBinary}/"* "$out/opt/dotnet/nuget-binary"
      mkdir -p "$out/bin"
      source "${makeWrapper}/nix-support/setup-hook" # Surely there's a better way to do this?
      makeWrapper "${mono}/bin/mono $out/opt/dotnet/nuget-binary/NuGet.exe" "$out/bin/nuget"
      ${dotnetbuildhelpers}/bin/create-pkg-config-for-dll.sh "$out/lib/pkgconfig" "$out/opt/dotnet/nuget-binary/NuGet.Core.dll"
    ''
