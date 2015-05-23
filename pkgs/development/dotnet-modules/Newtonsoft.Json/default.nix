{ stdenv, fetchNuGet }:

fetchNuGet {
    name = "Newtonsoft.Json";
    version = "6.0.8";
    sha256 = "1daz1zj2lvb20d9mk1bzxjgd8syr2m9glnwgibkkx0l6z0qx1asz";
}
