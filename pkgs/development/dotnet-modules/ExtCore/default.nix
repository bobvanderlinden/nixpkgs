{ stdenv, fetchgit, makeWrapper, mono, dotnetbuildhelpers, fsharp, pkgconfig, dotnetPackages }:

stdenv.mkDerivation rec {
  baseName = "ExtCore";
  version = "0.8.46";
  name = "${baseName}-${version}";

  src = fetchgit {
    url = "https://github.com/jack-pappas/ExtCore";
    rev = "0269b6d3c479f45abd7aa983aaeca08d07473943";
    sha256 = "0ki1ww2ir3yyp5vszqa6ligb81qpgl37h44h0i6qshwvhnaf491h";
  };

  buildInputs = [
    makeWrapper
    mono
    dotnetbuildhelpers
    fsharp
    pkgconfig
    dotnetPackages.nUnit
    dotnetPackages.fsCheck
  ];

  configurePhase = ''
     # Just to make sure there's no attempt to call these executables
     sed -i -e 's,mono --runtime=.* \$(.*),true,g' .nuget/NuGet.targets
     rm -vf .nuget/NuGet.exe # Just to be sure
     touch  .nuget/NuGet.exe # File needs to be there

     # Fix case
     sed -i -e s,nuget.targets,NuGet.targets, ExtCore.Tests/ExtCore.Tests.fsproj

     # Fix targets
     find -name \*.fsproj | xargs -n 1 patch-fsharp-targets.sh
  '';

  buildPhase = ''
    export FSharpTargetsPath="${fsharp}/lib/mono/4.0/Microsoft.FSharp.Targets"
    xbuild /p:Configuration="Release (net45)"
  '';

  installPhase = ''
    mkdir -p "$out"/opt/dotnet/${baseName}
    cp -rv ExtCore/bin/net45/Release/* "$out"/opt/dotnet/${baseName}
    for dll in "$out"/opt/dotnet/${baseName}/ExtCore*.dll
    do
      create-pkg-config-for-dll.sh "$out/lib/pkgconfig" "$dll"
    done
  '';

  dontStrip = true;

  meta = {
    description = "ExtCore is an extended core library for F#";
    homepage = "https://github.com/jack-pappas/ExtCore";
    license = stdenv.lib.licenses.asl20;
    maintainers = with stdenv.lib.maintainers; [ obadz ];
    platforms = with stdenv.lib.platforms; linux;
  };
}
