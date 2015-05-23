{ stdenv, fetchurl, makeWrapper, mono, dotnetbuildhelpers, fsharp
, paket_binary
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

  buildInputs = [ makeWrapper mono dotnetbuildhelpers fsharp paket_binary ];

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
     # Generate a local directory containing all NuPkgs
     createNuPkgMirror.sh \
       ${fake} \
       ${fsCheck} \
       ${fsCheckNunit} \
       ${fsharpCompilerService} \
       ${fsharpCore} \
       ${fsharpFormatting} \
       ${fsharpVSPowerToolsCore} \
       ${ilRepack} \
       ${microsoftBclBuild} \
       ${microsoftBcl} \
       ${microsoftNetHttp} \
       ${newtonsoftJson} \
       ${nunit} \
       ${nunitRunners} \
       ${octokit} \
       ${unionArgParser}
    
     # Get NuPkgs from local directory rather than remote sever
     substituteInPlace paket.dependencies --replace "source https://nuget.org/api/v2" "source nupkg-local-mirror"

     # Fix case of FsCheck.Nunit in paket.dependencies
     substituteInPlace paket.dependencies --replace FsCheck.NUnit FsCheck.Nunit

     # Remove all dependencies on single-files-in-git-repos as Paket will attempt to download those
     sed -i -e 's/^github .*$//' paket.dependencies
     find -name paket.references -print -exec sed -i -e 's/^File:.*$//' {} \;

     # Copy said single-files-in-git-repos
     cp -v "${fileFsUnit}" "tests/Paket.Tests/FsUnit.fs"
     cp -v "${fileGlobbing}" "src/Paket.Core/Globbing.fs"
     cp -v "${fileErrorHandling}" "src/Paket.Core/ErrorHandling.fs"

     # Patch project files to use the single-files-in-git-repos that we've placed there
     patch src/Paket.Core/Paket.Core.fsproj << EOF
     @@ -67,14 +67,8 @@
        -->
        <Import Project="$(SolutionDir)\.paket\paket.targets" />
        <ItemGroup>
     -    <Compile Include="..\..\paket-files\fsprojects\Chessie\src\Chessie\ErrorHandling.fs">
     -      <Paket>True</Paket>
     -      <Link>ErrorHandling.fs</Link>
     -    </Compile>
     -    <Compile Include="..\..\paket-files\fsharp\FAKE\src\app\FakeLib\Globbing\Globbing.fs">
     -      <Paket>True</Paket>
     -      <Link>Globbing.fs</Link>
     -    </Compile>
     +    <Compile Include="ErrorHandling.fs" />
     +    <Compile Include="Globbing.fs" />
          <Compile Include="Async.fs" />
          <Compile Include="AssemblyInfo.fs" />
          <Compile Include="CustomAssemblyInfo.fs" />
     EOF

     patch tests/Paket.Tests/Paket.Tests.fsproj << EOF
     @@ -65,13 +65,8 @@
        -->
        <Import Project="$(SolutionDir)\.paket\paket.targets" />
        <ItemGroup>
     -    <Compile Include="FsCheckAddin.fs">
     -      <Paket>True</Paket>
     -    </Compile>
     -    <Compile Include="..\..\paket-files\forki\FsUnit\FsUnit.fs">
     -      <Paket>True</Paket>
     -      <Link>FsUnit.fs</Link>
     -    </Compile>
     +    <Compile Include="FsCheckAddin.fs" />
     +    <Compile Include="FsUnit.fs" />
          <Compile Include="AssemblyInfo.fs" />
          <Compile Include="TestHelpers.fs" />
          <Compile Include="SemVerSpecs.fs" />
     EOF

     # Prevent the bootstrapper from being downloaded during build
     sed -i -e 's,<Exec Command=.*/>,,g' .paket/paket.targets

     # Paket install will unzip all the NuPkgs into packages/ and 
     # put in all the right references in the project files

     # The first time we run it, it will fail due the FsCheckN[Uu]nit case issue
     paket install || echo Tolerating this first failure...

     # So we copy one to the other
     cp -rv packages/FsCheck.Nunit packages/FsCheck.NUnit

     # ... and try again
     paket install # 2nd attempt
  '';

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
