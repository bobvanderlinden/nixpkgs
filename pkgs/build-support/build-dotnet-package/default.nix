{ stdenv, lib, makeWrapper, pkgconfig, mono, dotnetbuildhelpers }:

{ baseName
, version
, buildInputs ? []
, ... } @ attrs:
  stdenv.mkDerivation ({
    name = "${baseName}-${version}";

    placateNuget = true;
    placatePaket = true;
    patchFSharpTargets = true;
    removeDuplicatedDlls = true;
    xBuildFiles = [ ]; # Wildcards allowed
    xBuildFlags = [ "/p:Configuration=Release" ]; # Wildcards allowed
    outputFiles = [ "bin/Release/*" ]; # Wildcards allowed
    dllFiles = [ "*.dll" ]; # Wildcards allowed
    exeFiles = []; # Wildcards NOT allowed

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
        echo Placating Nuget in nuget.targets
        find -iname nuget.targets -print -exec sed -i -e 's,mono --runtime[^<]*,true NUGET PLACATED BY buildDotnetPackage,g' {} \;

        echo Just to be sure, replacing Nuget executables by empty files.
        find . -iname nuget.exe -exec rm -v {} \; -exec touch {} \; 
      fi

      if [ -n "$placatePaket" ]
      then
        echo Placating Paket in paket.targets
        find -iname paket.targets -print -exec sed -i -e 's,mono --runtime[^<]*,true PAKET PLACATED BY buildDotnetPackage,g' {} \;

        echo Just to be sure, replacing Paket executables by empty files.
        find . -iname paket\*.exe -exec rm -v {} \; -exec touch {} \; 
      fi

      if [ -n "$patchFSharpTargets" ]
      then
        echo Patching F\#  targets in fsproj files
        find -iname \*.fsproj -print -exec patch-fsharp-targets.sh {} \;
      fi

      runHook postConfigure
    '';

    buildPhase = ''
      runHook preBuild

      echo Building dotNET packages...

      # Probably needs to be moved to fsharp
      if pkg-config FSharp.Core
      then
        export FSharpTargetsPath="$(dirname $(pkg-config FSharp.Core --variable=Libraries))/Microsoft.FSharp.Targets"
      fi

      if [ -n "$xBuildFiles" ]
      then
        for xBuildFile in $xBuildFiles
        do
          xbuild $xBuildFlags $xBuildFile
        done
      else
        xbuild $xBuildFlags
      fi

      runHook postBuild
    '';

    dontStrip = true;

    installPhase = ''
      runHook preInstall

      target="$out/lib/dotnet/${baseName}"
      mkdir -p "$target"
      for output in $outputFiles
      do
        cp -rv "$output" "$target"
      done

      if [ -n "$removeDuplicatedDlls" ]
      then
        pushd "$out"
        remove-duplicated-dlls.sh
        popd
      fi

      for dll in $dllFiles
      do
        dll="$target"/$dll
        [ -f "$dll" ] || continue
        if pkg-config $(basename -s .dll "$dll")
        then
          echo "$dll already exported by a buildInputs, not re-exporting"
        else
          ${dotnetbuildhelpers}/bin/create-pkg-config-for-dll.sh "$out/lib/pkgconfig" "$dll"
        fi
      done

      for exe in $exeFiles
      do
        mkdir -p "$out"/bin
        commandName="$(basename -s .exe "$(echo "$exe" | tr "[A-Z]" "[a-z]")")" 
        makeWrapper "${mono}/bin/mono \"$target/$exe\"" "$out"/bin/"$commandName"
      done

    runHook postInstall
    '';
  } // (builtins.removeAttrs attrs [ "buildInputs" ] ))
