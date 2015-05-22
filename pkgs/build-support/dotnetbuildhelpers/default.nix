{ helperFunctions, mono }:
  helperFunctions.runCommand
    "dotnetbuildcreateNuPkgMirrors"
    { preferLocalBuild = true; }
    ''
      target="$out/bin"
      mkdir -p "$target"

      cp -v ${./createNuPkgMirror.sh} "$target/createNuPkgMirror.sh"
      chmod 755 "$target"/createNuPkgMirror.sh
      patchShebangs "$target/createNuPkgMirror.sh"

      cp -v ${./patchFSharpTargets.sh} "$target/patchFSharpTargets.sh"
      chmod 755 "$target"/patchFSharpTargets.sh
      patchShebangs "$target/patchFSharpTargets.sh"
    ''
