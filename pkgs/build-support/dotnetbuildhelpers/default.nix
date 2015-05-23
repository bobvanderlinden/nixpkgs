{ helperFunctions, mono }:
  helperFunctions.runCommand
    "dotnetbuildhelpers"
    { preferLocalBuild = true; }
    ''
      target="$out/bin"
      mkdir -p "$target"

      cp -v ${./create-nupkg-mirror.sh} "$target/create-nupkg-mirror.sh"
      chmod 755 "$target"/create-nupkg-mirror.sh
      patchShebangs "$target/create-nupkg-mirror.sh"

      cp -v ${./patch-fsharp-targets.sh} "$target/patch-fsharp-targets.sh"
      chmod 755 "$target"/patch-fsharp-targets.sh
      patchShebangs "$target/patch-fsharp-targets.sh"
    ''
