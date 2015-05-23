{ stdenv, fetchNuGet }:

fetchNuGet {
    name = "Microsoft.Bcl";
    version = "1.1.10";
    sha256 = "198ji76nz3738f20k8qkqa5gxicbmpl1x5xzisrkskncy7s801i2";
}
