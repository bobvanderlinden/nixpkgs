{stdenv, fetchurl, fetchgit, mono }:

stdenv.mkDerivation rec {
  name = "nuget-${version}";
  version = "2.7.3";

  src = fetchgit {
    url = "https://github.com/NuGet/NuGet.CommandLine.git";
    rev = "806af37ef533226afc9ef1092dfdca347c8ce6bd";
    sha256 = "14al7h09sf9p4nh09iq0anh2fczrqdscrgqvx9pgwx0zskkramw1";
  };

  srcNugetBinary = fetchgit {
    url = "https://github.com/mono/nuget-binary.git";
    rev = "da1f2102f8172df6f7a1370a4998e3f88b91c047";
    sha256 = "1hbnckc4gvqkknf8gh1k7iwqb4vdzifdjd19i60fnczly5v8m1c3";
  };

  buildInputs = [mono];

  preBuildPhase = ''
    cd src/NuGet.CommandLine
  '';

  buildPhase = ''
    ${mono}/bin/mono ${srcNugetBinary}/NuGet.exe
    xbuild NuGet.CommandLine.csproj
  '';

  installPhase = ''
    mkdir -p $out/lib/nuget $out/bin
    cp bin/*.{dll,exe} $out/lib/nuget
    cat > $out/bin/nuget << EOF
    #!/bin/sh
    export LD_LIBRARY_PATH=\$LD_LIBRARY_PATH:${mono}/lib
    exec ${mono}/bin/mono $out/lib/nuget/nuget.exe
    EOF
    chmod +x $out/bin/nuget
  '';

  # Always needed on Mono, otherwise nothing runs
  dontStrip = true; 

  meta = {
    homepage = https://github.com/mono/nuget;
    description = "The package manager for the Microsoft development platform including .NET";
    license = stdenv.lib.licenses.asl20;
    maintainers = with stdenv.lib.maintainers; [bobvanderlinden];
    platforms = with stdenv.lib.platforms; linux;
  };
}
