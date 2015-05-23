{ stdenv, fetchNuGet }:

fetchNuGet {
    name = "NUnit.Runners";
    version = "2.6.4";
    sha256 = "11nmi7vikn9idz8qcad9z7f73arsh5rw18fc1sri9ywz77mpm1s4";
}
