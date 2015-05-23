# We should be able to get this out of the F# compiler?

{ stdenv, fetchNuGet }:

fetchNuGet {
    name = "FSharp.Core";
    version = "3.1.2.1";
    sha256 = "0g9chz2mi7r8gw94wdlb99dlgina73fhqijv0qs7ca2lhy3mk1sj";
}
