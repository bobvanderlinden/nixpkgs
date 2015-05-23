{ stdenv, fetchNuGet }:

fetchNuGet {
    name = "Microsoft.Bcl.Build";
    version = "1.0.21";
    sha256 = "0w08d8p87z3v3z28kz92xm19by6jgm6qrlh6pyl80imlg7mkmx61";
}
