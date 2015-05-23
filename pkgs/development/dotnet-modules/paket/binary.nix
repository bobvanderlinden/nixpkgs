{ stdenv, helperFunctions, makeWrapper, fetchNuGet, unzip, mono }:

let
  pkg = fetchNuGet {
    name = "Paket";
    version = "1.4.3";
    sha256 = "1ww40x3z7rpq56n68401gbjkjy6n7cjg20icgc4ns6qjw8fkygpa";
  };
in
  helperFunctions.runCommand
    "paket-binary"
    { preferLocalBuild = true; }
    ''
      mkdir -p "$out/opt/dotnet/paket-binary"
      ${unzip}/bin/unzip -d "$out/opt/dotnet/paket-binary" ${pkg}
      mkdir -p "$out/bin"
      source "${makeWrapper}/nix-support/setup-hook" # Surely there's a better way to do this?
      makeWrapper "${mono}/bin/mono $out/opt/dotnet/paket-binary/tools/paket.exe" "$out/bin/paket"
    ''
