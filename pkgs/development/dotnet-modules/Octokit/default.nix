{ stdenv, fetchNuGet }:

fetchNuGet {
    name = "Octokit";
    version = "0.12.0";
    sha256 = "1nadnfx4ngz880svjik9pmarbaqgdm2siidzk4q4majr0hinj642";
}
