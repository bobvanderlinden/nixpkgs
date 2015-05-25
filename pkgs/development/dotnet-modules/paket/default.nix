{ stdenv, fetchurl, makeWrapper, mono, dotnetbuildhelpers, fsharp, pkgconfig
, fake
, fsCheck
, fsCheckNunit
, fsharpCompilerService
, fsharpCore
, fsharpFormatting
, fsharpVSPowerToolsCore
, ilRepack
, microsoftBclBuild
, microsoftBcl
, microsoftNetHttp
, newtonsoftJson
, nunit
, nunitRunners
, octokit
, unionArgParser
, ...
}:

stdenv.mkDerivation rec {
  name = "paket-${version}";
  version = "1.5.0";

  src = fetchurl {
    name = "${name}.tar.gz";
    url = "https://github.com/fsprojects/Paket/archive/${version}.tar.gz";
    sha256 = "1f6b0m67lncgpa1pxa1w086jc15nppjf3nb6np9f1zpdxag2dwws";
  };

  buildInputs = [
    makeWrapper
    mono
    dotnetbuildhelpers
    fsharp pkgconfig
    fake
    fsCheck
    fsCheckNunit
    fsharpCompilerService
    fsharpCore
    fsharpFormatting
    fsharpVSPowerToolsCore
    ilRepack
    microsoftBclBuild
    microsoftBcl
    microsoftNetHttp
    newtonsoftJson
    nunit
    nunitRunners
    octokit
    unionArgParser
  ];

  fileFsUnit = fetchurl {
    name = "FsUnit.fs";
    url = https://raw.githubusercontent.com/forki/FsUnit/81d27fd09575a32c4ed52eadb2eeac5f365b8348/FsUnit.fs;
    sha256 = "1zxigqgb2s2v755622jbbzibvf91990x2dijhbdgg646vsybkpdp";
  };

  # fileOctokit = fetchurl {
  #   name = "Octokit.fsx";
  #   url = https://raw.githubusercontent.com/fsharp/FAKE/8e65e2fc1406f326b44f3f87ec9ca9b3127a6e78/modules/Octokit/Octokit.fsx;
  #   sha256 = "16qxwmgyg3fn3z9a8hppv1m579828x7lvfj8qflcgs2g6ciagsir";
  # };

  fileGlobbing = fetchurl {
    name = "Globbing.fs";
    url = https://raw.githubusercontent.com/fsharp/FAKE/8e65e2fc1406f326b44f3f87ec9ca9b3127a6e78/src/app/FakeLib/Globbing/Globbing.fs;
    sha256 = "1v7d7666a61j6f8ksh0q40hfsc5b03448viq17xa91xgb7skhyx7";
  };

  fileErrorHandling = fetchurl {
    name = "ErrorHandling.fs";
    url = https://raw.githubusercontent.com/fsprojects/Chessie/master/src/Chessie/ErrorHandling.fs;
    sha256 = "0ka9ilfbl4izxc1wqd5vlfjnp7n2xcckfhp13gzhqbdx7464van9";
  };

  configurePhase = ''
     # Copy said single-files-in-git-repos
     cp -v "${fileFsUnit}" "tests/Paket.Tests/FsUnit.fs"
     cp -v "${fileGlobbing}" "src/Paket.Core/Globbing.fs"
     cp -v "${fileErrorHandling}" "src/Paket.Core/ErrorHandling.fs"

     # Prevent the bootstrapper from being downloaded during build
     sed -i -e 's,<Exec Command=.*/>,,g' .paket/paket.targets
  '';

  patches = [ ./paket.patch ];

  buildPhase = ''
    export FSharpTargetsPath="${fsharp}/lib/mono/4.0/Microsoft.FSharp.Targets"
    xbuild
  '';

  installPhase = ''
    mkdir -p "$out"/opt/dotnet/paket
    cp -v bin/* "$out"/opt/dotnet/paket
    makeWrapper "${mono}/bin/mono $out/opt/dotnet/paket/paket.exe" "$out/bin/paket"
  '';

  dontStrip = true;

  meta = {
    description = "A dependency manager for .NET and Mono projects";
    homepage = "http://fsprojects.github.io/Paket/";
    license = stdenv.lib.licenses.mit;
    maintainers = with stdenv.lib.maintainers; [ obadz ];
    platforms = with stdenv.lib.platforms; linux;
  };
}
