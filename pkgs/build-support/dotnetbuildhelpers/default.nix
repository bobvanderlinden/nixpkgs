{ helperFunctions, mono }:
  helperFunctions.runCommand
    "dotnetbuildhelpers"
    { preferLocalBuild = true; }
    ''
      target="$out/bin"
      mkdir -p "$target"

      for script in ${./create-nupkg-mirror.sh} ${./create-pkg-config-for-dll.sh} ${./patch-fsharp-targets.sh}
      do
        scriptName="$(basename "$script" | cut -f 2- -d -)"
        cp -v "$script" "$target"/"$scriptName"
        chmod 755 "$target"/"$scriptName"
        patchShebangs "$target"/"$scriptName"
        substituteInPlace "$target"/"$scriptName" --replace monodis ${mono}/bin/monodis
      done
    ''
