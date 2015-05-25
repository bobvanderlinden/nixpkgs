{ stdenv
, callPackage
, helperFunctions
, fetchNuGet
, overrides ? {}
}:

let self = _self // overrides; _self = with self; {

  fake = fetchNuGet {
    name = "FAKE";
    version = "3.33.0";
    sha256 = "04gllx9d1w8zn9gq9p5k76b79ix07rilk3apdi72dmz6h3yylcdm";
    dlls = [ "tools/*.dll" ];
  };

  fsCheck = fetchNuGet {
    name = "FsCheck";
    version = "1.0.4";
    sha256 = "1q2wk4d4d1q94qzcccgmxb2lh0b8qkmpyz0p7lfphkw2gx6cy5ad";
    dlls = [ "lib/net45/*.dll" ];
  };

  fsCheckNunit = fetchNuGet {
    name = "FsCheck.Nunit";
    version = "1.0.4";
    sha256 = "1s62jrsa5hxqy1ginl8r29rjdc8vbkwmz7mb0hglhwccdqfyr5xy";
    dlls = [ "lib/net45/*.dll" ];
  };

  fsharpCompilerService = fetchNuGet {
    name = "FSharp.Compiler.Service";
    version = "0.0.89";
    sha256 = "1zl0n2w8fgssi0ajyca1cp2c8a3ysxvjnf697i17asch782mdhrf";
    dlls = [ "lib/net45/*.dll" ];
  };

  # We should be able to get this out of the F# compiler?
  fsharpCore = fetchNuGet {
    name = "FSharp.Core";
    version = "3.1.2.1";
    sha256 = "0g9chz2mi7r8gw94wdlb99dlgina73fhqijv0qs7ca2lhy3mk1sj";
    dlls = [ "lib/net40/*.dll" ];
  };

  fsharpFormatting = fetchNuGet {
    name = "FSharp.Formatting";
    version = "2.9.6";
    sha256 = "190myfj50fl0xs35xf5cz9v99jgwz3v5x5cx1zzwi8fqgym2l7qr";
    dlls = [ "lib/net40/*.dll" ];
  };

  fsharpVSPowerToolsCore = fetchNuGet {
    name = "FSharpVSPowerTools.Core";
    version = "1.8.0";
    sha256 = "1jmdk8ff07fm1jr18igfixqj5blvcyfwi9lm03yncmnz0mxpv0zh";
    dlls = [ "lib/net45/*.dll" ];
  };

  ilRepack = fetchNuGet {
    name = "ILRepack";
    version = "1.26.0";
    sha256 = "1csx8qjj5w6i9v75qd8bz1j5c86lmg20nf3r47lasbgbw316j33v";
  };

  microsoftBclBuild = fetchNuGet {
    name = "Microsoft.Bcl.Build";
    version = "1.0.21";
    sha256 = "0w08d8p87z3v3z28kz92xm19by6jgm6qrlh6pyl80imlg7mkmx61";
    dlls = [ "build/*.dll" ];
  };

  microsoftBcl = fetchNuGet {
    name = "Microsoft.Bcl";
    version = "1.1.10";
    sha256 = "198ji76nz3738f20k8qkqa5gxicbmpl1x5xzisrkskncy7s801i2";
    dlls = [ "lib/net40/*.dll" ];
  };

  microsoftNetHttp = fetchNuGet {
    name = "Microsoft.Net.Http";
    version = "2.2.29";
    sha256 = "079qh7wsqmzd7gyj2f9x9apy3vam84jk5i5hrf5cjnyyilbla19h";
    dlls = [ "lib/net40/*.dll" ];
  };

  newtonsoftJson = fetchNuGet {
    name = "Newtonsoft.Json";
    version = "6.0.8";
    sha256 = "1daz1zj2lvb20d9mk1bzxjgd8syr2m9glnwgibkkx0l6z0qx1asz";
    dlls = [ "lib/net45/*.dll" ];
  };

  nunit = fetchNuGet {
    name = "NUnit";
    version = "2.6.4";
    sha256 = "1acwsm7p93b1hzfb83ia33145x0w6fvdsfjm9xflsisljxpdx35y";
    dlls = [ "lib/*.dll" ];
  };

  nunitRunners = fetchNuGet {
    name = "NUnit.Runners";
    version = "2.6.4";
    sha256 = "11nmi7vikn9idz8qcad9z7f73arsh5rw18fc1sri9ywz77mpm1s4";
    dlls = [ "tools/lib/*.dll" ];
    exes = [ ];
  };

  octokit = fetchNuGet {
    name = "Octokit";
    version = "0.12.0";
    sha256 = "1nadnfx4ngz880svjik9pmarbaqgdm2siidzk4q4majr0hinj642";
    dlls = [ "lib/net45/*.dll" ];
  };

  unionArgParser = fetchNuGet {
    name = "UnionArgParser";
    version = "0.8.7";
    sha256 = "0lgyc3mb7ja07r0vh9b88yr8va9fbwppidgq83vzh3k61xvij9id";
  };

  systemWebMvcExtensions = fetchNuGet {
    name = "System.Web.Mvc.Extensions.Mvc.4";
    version = "1.0.9";
    sha256 = "19wi662m8primpimzifv8k560m6ymm73z0mf1r8ixl0xqag1hx6j";
  };

  microsoftAspNetMvc = fetchNuGet {
    name = "Microsoft.AspNet.Mvc";
    version = "5.2.2";
    sha256 = "1jwfmz42kw2yb1g2hgp2h34fc4wx6s8z71da3mw5i4ivs25w9n2b";
  };

  microsoftAspNetRazor = fetchNuGet {
    name = "Microsoft.AspNet.Razor";
    version = "3.2.2";
    sha256 = "1db3apn4vzz1bx6q5fyv6nyx0drz095xgazqbw60qnhfs7z45axd";
  };

  microsoftAspNetWebPages = fetchNuGet {
    name = "Microsoft.AspNet.WebPages";
    version = "3.2.2";
    sha256 = "17fwb5yj165sql80i47zirjnm0gr4n8ypz408mz7p8a1n40r4i5l";
  };

  microsoftWebInfrastructure = fetchNuGet {
    name = "Microsoft.Web.Infrastructure";
    version = "1.0.0.0";
    sha256 = "1mxl9dri5729d0jl84gkpqifqf4xzb6aw1rzcfh6l0r24bix9afn";
  };

  nuget_binary = callPackage ../development/dotnet-modules/nuget { inherit helperFunctions; };
  paket_binary = callPackage ../development/dotnet-modules/paket/binary.nix { inherit helperFunctions; };
  paket        = callPackage ../development/dotnet-modules/paket self;
}; in self
