{ stdenv, helperFunctions, makeWrapper, fetchNuGet, unzip, mono }:

let
  pkg = fetchNuGet {
    name = "Paket";
    version = "1.5.3";
    sha256 = "12hlh4cbsispdzzqh5pdjrsvk8g4ajrbzpifqlaa35lrqwws267w";
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
