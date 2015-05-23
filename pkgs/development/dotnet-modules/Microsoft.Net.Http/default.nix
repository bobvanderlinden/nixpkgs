{ stdenv, fetchNuGet }:

fetchNuGet {
    name = "Microsoft.Net.Http";
    version = "2.2.29";
    sha256 = "079qh7wsqmzd7gyj2f9x9apy3vam84jk5i5hrf5cjnyyilbla19h";
}
