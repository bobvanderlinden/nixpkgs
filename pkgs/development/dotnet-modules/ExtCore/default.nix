{ stdenv, fetchgit, mkDotnetDerivation, fsharp, dotnetPackages }:

mkDotnetDerivation rec {
  baseName = "ExtCore";
  version = "0.8.46";

  src = fetchgit {
    url = "https://github.com/jack-pappas/ExtCore";
    rev = "0269b6d3c479f45abd7aa983aaeca08d07473943";
    sha256 = "0ki1ww2ir3yyp5vszqa6ligb81qpgl37h44h0i6qshwvhnaf491h";
  };

  extraBuildInputs = [
    fsharp
    dotnetPackages.nUnit
    dotnetPackages.fsCheck
  ];

  postConfigure = ''
    # Fix case
    sed -i -e s,nuget.targets,NuGet.targets, ExtCore.Tests/ExtCore.Tests.fsproj
  '';

  xBuildFlags = [ "/p:Configuration=\"Release (net45)\"" ];
  outputFiles = [ "ExtCore/bin/net45/Release/*" ];
  dllFiles = [ "ExtCore*.dll" ];

  meta = {
    description = "ExtCore is an extended core library for F#";
    homepage = "https://github.com/jack-pappas/ExtCore";
    license = stdenv.lib.licenses.asl20;
    maintainers = with stdenv.lib.maintainers; [ obadz ];
    platforms = with stdenv.lib.platforms; linux;
  };
}
