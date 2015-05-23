{ stdenv, fetchNuGet }:

fetchNuGet {
    name = "FSharpVSPowerTools.Core";
    version = "1.8.0";
    sha256 = "1jmdk8ff07fm1jr18igfixqj5blvcyfwi9lm03yncmnz0mxpv0zh";
}
