{ stdenv, maven, pkgs, javaPackages,  writeText, buildEnv }:
with builtins;
with stdenv.lib;
{ outputPaths ? if m2Path then [ m2Path ] else []
, doCheck ? false
, skipAnimalSniffer ? false
, quiet ? true
, debug ? false
, batchMode ? true
, mavenBuildGoals ? [ "install" ]
, mavenCheckGoals ? [ "test" ]
, mavenExtraArgs ? ""
, mavenPackages ? [ ]
, mavenSettings ? writeText "settings.xml" ''
    <settings>
      <mirrors>
        <mirror>
          <id>local-repository</id>
          <url>file:///var/empty</url>
          <mirrorOf>*</mirrorOf>
        </mirror>
      </mirrors>
      <localRepository>''${env.MAVEN_LOCAL_REPOSITORY}</localRepository>
      <offline>true</offline>
    </settings>
  ''
, buildInputs ? [ maven jdk ]

# Deprecated. Use `extraRepositoryPackages`
, mavenDeps ? []

# Deprecated. Use `outputPaths`.
, m2Path ? null
, ... } @ args:
let
  derivationArgs = (builtins.removeAttrs args [
    "mavenPackages"
    "m2Path"
    "mavenDeps"
  ]);
in
# makeOverridable (
  stdenv.mkDerivation (derivationArgs // rec {
    inherit mavenBuildGoals mavenCheckGoals doCheck buildInputs;

    repositorySources = map (repositoryPackage: "${repositoryPackage}/share/maven-repo") mavenPackages;

    configurePhase = args.configurePhase or ''
      runHook preConfigure
      export MAVEN_HOME="$PWD/.m2"
      export MAVEN_LOCAL_REPOSITORY="$MAVEN_HOME/repository"
      export MAVEN_ARGS="--settings=${mavenSettings} ${optionalString (batchMode) "--batch-mode"} ${optionalString (quiet) "--quiet"} ${optionalString (debug) "--debug"} -Danimal.sniffer.skip=${boolToString skipAnimalSniffer} ${mavenExtraArgs}"

      mkdir -p $MAVEN_LOCAL_REPOSITORY

      ${./build-maven-repository.sh} "$MAVEN_LOCAL_REPOSITORY" $repositorySources

      runHook postConfigure
    '';

    buildPhase = args.buildPhase or ''
      runHook preBuild
      mvn $MAVEN_ARGS -Dmaven.test.skip=true $mavenBuildGoals
      runHook postBuild
    '';

    checkPhase = args.checkPhase or ''
      runHook preCheck
      mvn $MAVEN_ARGS $mavenCheckGoals
      runHook postCheck
    '';

    installPhase = args.installPhase or ''
      runHook preInstall
      for outputPath in $outputPaths
      do
        mkdir -p "$out/share/maven-repo/$outputPath"
        cp -r "$MAVEN_LOCAL_REPOSITORY/$outputPath"/* $out/share/maven-repo/$outputPath/
      done
      runHook postInstall
    '';
  })
# )