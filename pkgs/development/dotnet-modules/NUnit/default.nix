{ stdenv, fetchNuGet }:

fetchNuGet {
    name = "NUnit";
    version = "2.6.4";
    sha256 = "1acwsm7p93b1hzfb83ia33145x0w6fvdsfjm9xflsisljxpdx35y";
}
