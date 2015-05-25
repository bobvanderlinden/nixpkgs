{ stdenv, lib, fetchurl, unzip, dotnetbuildhelpers }:

{ name
, version
, url ? "https://www.nuget.org/api/v2/package/${name}/${version}"
, sha256 ? ""
, md5 ? ""
, dlls ? []
, exes ? {}
}:
  stdenv.mkDerivation {
    inherit name version;
    src = fetchurl {
      inherit url sha256 md5;
      name = "${name}.${version}.nupkg";
    };
    phases = [ "installPhase" ];
    installPhase = ''
      target="$out/opt/dotnet/${name}"
      mkdir -p "$target"
      ${unzip}/bin/unzip -d "$target" "$src"
    ''
    + (lib.concatStringsSep "\n"
        (map
          (dll : ''
            for dll in "$target"/${dll}
            do 
              ${dotnetbuildhelpers}/bin/create-pkg-config-for-dll.sh "$out/lib/pkgconfig" "$dll"
            done'')
          dlls));
  }
