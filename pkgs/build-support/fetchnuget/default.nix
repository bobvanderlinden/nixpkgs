{ stdenv, fetchurl, buildDotnetPackage, unzip }:

{ name
, version
, url ? "https://www.nuget.org/api/v2/package/${name}/${version}"
, sha256 ? ""
, md5 ? ""
, dllFiles ? []
, exeFiles ? []
}:
  buildDotnetPackage {
    inherit version dllFiles exeFiles;

    baseName = name;

    src = fetchurl {
      inherit url sha256 md5;
      name = "${name}.${version}.zip";
    };

    sourceRoot = ".";

    buildInputs = [ unzip ];

    phases = [ "unpackPhase" "installPhase" ];

    outputFiles = [ "*" ];

    preInstall = ''
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

      traverseRename
   '';
  }
