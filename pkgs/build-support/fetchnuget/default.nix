{ stdenv, lib, makeWrapper, fetchurl, unzip, mono, dotnetbuildhelpers }:

{ name
, version
, url ? "https://www.nuget.org/api/v2/package/${name}/${version}"
, sha256 ? ""
, md5 ? ""
, dlls ? []
, exes ? {}
, postInstall ? ""
}:
  stdenv.mkDerivation {
    inherit name version postInstall;

    src = fetchurl {
      inherit url sha256 md5;
      name = "${name}.${version}.nupkg";
    };

    phases = [ "installPhase" ];

    buildInputs = [ makeWrapper ];

    installPhase = ''
      target="$out/opt/dotnet/${name}"
      mkdir -p "$target"
      ${unzip}/bin/unzip -d "$target" "$src"

      function traverseRename () {
        for e in *
        do
          t="$(echo "$e" | sed -e "s/%20/\ /g" -e "s/%2B/+/g")"
          [ "$t" != "$e" ] && mv -vn "$e" "$t"
          if [ -d "$t" ]
          then
            cd "$t"
            traverseRename
            cd ..
          fi
        done
      }

      (cd "$target"; traverseRename)
    ''
    + (lib.concatStringsSep "\n"
        (map
          (dll : ''
            for dll in "$target"/${dll}
            do 
              ${dotnetbuildhelpers}/bin/create-pkg-config-for-dll.sh "$out/lib/pkgconfig" "$dll"
            done'')
          dlls)) + "\n"
    + (lib.concatStringsSep "\n"
        (builtins.attrValues
          (lib.mapAttrs
            (commandName: exePath: ''
              mkdir -p "$out"/bin
              makeWrapper "${mono}/bin/mono \"$target/${exePath}\"" "$out"/bin/"${commandName}"
            '') exes))) + "\n";
  }
