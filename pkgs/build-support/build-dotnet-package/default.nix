{ stdenv, lib, makeWrapper, pkgconfig, mono, dotnetbuildhelpers }:

{ baseName
, version
, buildInputs ? []
, ... } @ attrsOrig:
  let
    attrs = {
      name = "${baseName}-${version}";

      placateNuget = true;
      placatePaket = true;
      patchFSharpTargets = true;
      removeDuplicatedDlls = true;
      xBuildFiles = [ ];
      xBuildFlags = [ "/p:Configuration=Release" ];
      outputFiles = [ "bin/Release/*" ];
      dllFiles = [ "*.dll" ];
      exeFiles = [];

      buildInputs = [
        pkgconfig
        mono
        dotnetbuildhelpers
        makeWrapper
      ] ++ buildInputs;

      configurePhase = ''
        runHook preConfigure

        if [ -n "$placateNuget" ]
        then
          echo ">> Placating Nuget in nuget.targets"
          find -iname nuget.targets -print -exec sed -i -e 's,mono --runtime[^<]*,true NUGET PLACATED BY buildDotnetPackage,g' {} \;

          echo ">> Just to be sure, replacing Nuget executables by empty files."
          find . -iname nuget.exe -exec rm -v {} \; -exec touch {} \;
        fi

        if [ -n "$placatePaket" ]
        then
          echo ">> Placating Paket in paket.targets"
          find -iname paket.targets -print -exec sed -i -e 's,mono --runtime[^<]*,true PAKET PLACATED BY buildDotnetPackage,g' {} \;

          echo ">> Just to be sure, replacing Paket executables by empty files."
          find . -iname paket\*.exe -exec rm -v {} \; -exec touch {} \;
        fi

        if [ -n "$patchFSharpTargets" ]
        then
          echo ">> Patching F#  targets in fsproj files"
          find -iname \*.fsproj -print -exec patch-fsharp-targets.sh {} \;
        fi

        runHook postConfigure
      '';

      buildPhase = ''
        runHook preBuild

        echo ">> Building dotNET package..."

        # Probably needs to be moved to fsharp
        if pkg-config FSharp.Core
        then
          export FSharpTargetsPath="$(dirname $(pkg-config FSharp.Core --variable=Libraries))/Microsoft.FSharp.Targets"
        fi

        if [ -n "$xBuildFiles" ]
        then
          for xBuildFile in "''${xBuildFiles}"
          do
            xbuild "''${xBuildFlags[@]}" "$xBuildFile"
          done
        else
          xbuild "''${xBuildFlags[@]}"
        fi

        runHook postBuild
      '';

      dontStrip = true;

      installPhase = ''
        runHook preInstall

        target="$out/lib/dotnet/${baseName}"
        mkdir -p "$target"

        echo ">> Copying output files to $target..."
        set -f
        for outputPattern in "''${outputFiles}"
        do
          set +f
          cp -rv $outputPattern "$target"
        done


        if [ -n "$removeDuplicatedDlls" ]
        then
          echo ">> Removing dlls copied from buildInputs..."
          pushd "$out"
          remove-duplicated-dlls.sh
          popd
        fi

        echo ">> Generating pkg-config file for dlls..."
        set -f
        for dllPattern in "''${dllFiles}"
        do
          set +f
          for dll in "$target"/$dllPattern
          do
            [ -f "$dll" ] || continue
            if pkg-config $(basename -s .dll "$dll")
            then
              echo ">>>> $dll already exported by a buildInputs, not re-exporting"
            else
              ${dotnetbuildhelpers}/bin/create-pkg-config-for-dll.sh "$out/lib/pkgconfig" "$dll"
            fi
          done
        done

        echo ">> Generating wrappers for .NET executables..."
        set -f
        for exePattern in "''${exeFiles}"
        do
          set +f
          for exe in "$target"/$exePattern
          do
            [ -f "$exe" ] || continue
            mkdir -p "$out"/bin
            commandName="$(basename -s .exe "$(echo "$exe" | tr "[A-Z]" "[a-z]")")"
            makeWrapper "${mono}/bin/mono \"$exe\"" "$out"/bin/"$commandName"
          done
        done

        runHook postInstall
      '';
    };

    attrsFilledIn = (attrs // (builtins.removeAttrs attrsOrig [ "buildInputs" ] ));

    attrsToBeFlattened = {
    # xBuildInputs = true;
    # xBuildFlags = true;
    # outputFiles = true;
    # dllFiles = true;
    # exeFiles = true;
    };

    attrsFlattened =
      lib.mapAttrs
        (key: value:
          if attrsToBeFlattened.${ key } or false
          then (lib.concatStringsSep " " (map (lib.escape (lib.stringToCharacters "\\ ';$`<>\t")) value))
          else value)
        attrsFilledIn;
  in
    stdenv.mkDerivation attrsFlattened
