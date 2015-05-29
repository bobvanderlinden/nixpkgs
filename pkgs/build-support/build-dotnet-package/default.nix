{ stdenv, lib, makeWrapper, pkgconfig, mono, dotnetbuildhelpers }:

{ baseName
, version
, buildInputs ? []
, placateNuget ? true
, placatePaket ? true
, patchFSharpTargets ? true
, removeDuplicatedDlls ? true
, xBuildFiles ? [ ]
, xBuildFlags ? [ "/p:Configuration=Release" ]
, outputFiles ? [ "bin/Release/*" ] # Wildcards allowed
, dllFiles ? [] # Wildcards allowed
, exeFiles ? [] # Wildcards NOT allowed
, preConfigure ? ""
, postConfigure ? ""
, preBuild ? ""
, postBuild ? ""
, preInstall ? ""
, postInstall ? ""
, ... } @ attrs:
  stdenv.mkDerivation ({
    name = "${baseName}-${version}";

    buildInputs = [
      pkgconfig
      mono
      dotnetbuildhelpers
      makeWrapper
    ] ++ buildInputs;

    configurePhase = ''
      ${preConfigure}

      if ${if placateNuget then "true" else "false"}
      then
        echo Placating Nuget in nuget.targets
        find -iname nuget.targets -print -exec sed -i -e 's,mono --runtime[^<]*,true NUGET PLACATED BY buildDotnetPackage,g' {} \;

        echo Just to be sure, replacing Nuget executables by empty files.
        find . -iname nuget.exe -exec rm -v {} \; -exec touch {} \; 
      fi

      if ${if placatePaket then "true" else "false"}
      then
        echo Placating Paket in paket.targets
        find -iname paket.targets -print -exec sed -i -e 's,mono --runtime[^<]*,true PAKET PLACATED BY buildDotnetPackage,g' {} \;

        echo Just to be sure, replacing Paket executables by empty files.
        find . -iname paket\*.exe -exec rm -v {} \; -exec touch {} \; 
      fi

      if ${if patchFSharpTargets then "true" else "false"}
      then
        echo Patching F\#  targets in fsproj files
        find -iname \*.fsproj -print -exec patch-fsharp-targets.sh {} \;
      fi

      ${postConfigure}
    '';

    buildPhase = ''
      echo Building dotNET packages...
      ${preBuild}

      # Probably needs to be moved to fsharp
      if pkg-config FSharp.Core
      then
        export FSharpTargetsPath="$(pkg-config FSharp.Core --variable=Libraries | cut -f 2- -d = | xargs dirname)/Microsoft.FSharp.Targets"
      fi

      if ${if builtins.length(xBuildFiles) > 0 then "true" else "false"}
      then
        for xBuildFile in ${toString xBuildFiles}
        do
          xbuild ${toString xBuildFlags} $xBuildFile
        done
      else
        xbuild ${toString xBuildFlags}
      fi

      ${postBuild}
    '';

    dontStrip = true;

    installPhase = preInstall + ''
      ${preInstall}

      target="$out/lib/dotnet/${baseName}"
      mkdir -p "$target"
      for output in ${toString outputFiles}
      do
        cp -rv "$output" "$target"
      done

      if ${if removeDuplicatedDlls then "true" else "false"}
      then
        pushd "$out"
        remove-duplicated-dlls.sh
        popd
      fi
    ''
    + (lib.concatStringsSep "\n"
        (map
          (dll : ''
            for dll in "$target"/${dll}
            do 
              ${dotnetbuildhelpers}/bin/create-pkg-config-for-dll.sh "$out/lib/pkgconfig" "$dll"
            done'')
          dllFiles)) + "\n"
    + (lib.concatStringsSep "\n"
        (map
          (exe : ''
            mkdir -p "$out"/bin
            commandName="$(basename -s .exe "$(echo "${exe}" | tr "[A-Z]" "[a-z]")")" 
            makeWrapper "${mono}/bin/mono \"$target/${exe}\"" "$out"/bin/"$commandName"
          '') exeFiles)) + "\n"
    + postInstall;
  } // (builtins.removeAttrs attrs [ "buildInputs" ] ))
