{ self, fetchurl, fetchgit ? null, lib }:

{
  by-spec."URIjs"."^1.13.2" =
    self.by-version."URIjs"."1.15.1";
  by-version."URIjs"."1.15.1" = self.buildNodePackage {
    name = "URIjs-1.15.1";
    version = "1.15.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/URIjs/-/URIjs-1.15.1.tgz";
      name = "URIjs-1.15.1.tgz";
      sha1 = "c3e4e85d2d32ed96bc49462966ed9ffaa7103201";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "URIjs" = self.by-version."URIjs"."1.15.1";
  by-spec."abbrev"."1" =
    self.by-version."abbrev"."1.0.7";
  by-version."abbrev"."1.0.7" = self.buildNodePackage {
    name = "abbrev-1.0.7";
    version = "1.0.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/abbrev/-/abbrev-1.0.7.tgz";
      name = "abbrev-1.0.7.tgz";
      sha1 = "5b6035b2ee9d4fb5cf859f08a9be81b208491843";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."abbrev"."~1.0.4" =
    self.by-version."abbrev"."1.0.7";
  by-spec."addr-to-ip-port"."^1.0.0" =
    self.by-version."addr-to-ip-port"."1.4.1";
  by-version."addr-to-ip-port"."1.4.1" = self.buildNodePackage {
    name = "addr-to-ip-port-1.4.1";
    version = "1.4.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/addr-to-ip-port/-/addr-to-ip-port-1.4.1.tgz";
      name = "addr-to-ip-port-1.4.1.tgz";
      sha1 = "19d0d3c813ac44c352b5df2f096c6d8f44117a86";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."addr-to-ip-port"."^1.0.1" =
    self.by-version."addr-to-ip-port"."1.4.1";
  by-spec."adm-zip"."https://github.com/xeoncore/adm-zip/archive/78f820330c776bca72aad3f22d127b357f57a609.tar.gz" =
    self.by-version."adm-zip"."0.4.4";
  by-version."adm-zip"."0.4.4" = self.buildNodePackage {
    name = "adm-zip-0.4.4";
    version = "0.4.4";
    bin = false;
    src = fetchurl {
      url = "https://github.com/xeoncore/adm-zip/archive/78f820330c776bca72aad3f22d127b357f57a609.tar.gz";
      name = "adm-zip-0.4.4.tgz";
      sha256 = "a9b667e4b1d8ad1e836f2f8c5bbfba6eb87938867adfd6db35c8c9d8edfb0cd5";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "adm-zip" = self.by-version."adm-zip"."0.4.4";
  by-spec."airplay-js"."^0.2.5" =
    self.by-version."airplay-js"."0.2.15";
  by-version."airplay-js"."0.2.15" = self.buildNodePackage {
    name = "airplay-js-0.2.15";
    version = "0.2.15";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/airplay-js/-/airplay-js-0.2.15.tgz";
      name = "airplay-js-0.2.15.tgz";
      sha1 = "5c1066a3b36b5e5cd25e1a4143757eed3724459a";
    };
    deps = {
      "mdns-js-0.3.1" = self.by-version."mdns-js"."0.3.1";
      "plist-with-patches-0.5.1" = self.by-version."plist-with-patches"."0.5.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."airplay-js"."git+https://git.popcorntime.io/mirrors/node-airplay-js.git" =
    self.by-version."airplay-js"."0.2.5";
  by-version."airplay-js"."0.2.5" = self.buildNodePackage {
    name = "airplay-js-0.2.5";
    version = "0.2.5";
    bin = false;
    src = fetchgit {
      url = "https://git.popcorntime.io/mirrors/node-airplay-js.git";
      rev = "2b1dd39b1c71d41baf13dfb491e59ea915926575";
      sha256 = "6f34900b6fbd0ff350480a9d8f84f6d7bbf52d13a0cc51fdfb5e0ab88fc5b611";
    };
    deps = {
      "mdns-js-0.3.1" = self.by-version."mdns-js"."0.3.1";
      "plist-with-patches-0.5.1" = self.by-version."plist-with-patches"."0.5.1";
      "iconv-lite-0.2.11" = self.by-version."iconv-lite"."0.2.11";
      "jschardet-1.1.0" = self.by-spec."jschardet"."1.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "airplay-js" = self.by-version."airplay-js"."0.2.5";
  by-spec."amdefine".">=0.0.4" =
    self.by-version."amdefine"."0.1.1";
  by-version."amdefine"."0.1.1" = self.buildNodePackage {
    name = "amdefine-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/amdefine/-/amdefine-0.1.1.tgz";
      name = "amdefine-0.1.1.tgz";
      sha1 = "b5c75c532052dccd6a39c0064c772c8d57a06cd2";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ansi"."~0.3.0" =
    self.by-version."ansi"."0.3.0";
  by-version."ansi"."0.3.0" = self.buildNodePackage {
    name = "ansi-0.3.0";
    version = "0.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ansi/-/ansi-0.3.0.tgz";
      name = "ansi-0.3.0.tgz";
      sha1 = "74b2f1f187c8553c7f95015bcb76009fb43d38e0";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ansi-regex"."^0.1.0" =
    self.by-version."ansi-regex"."0.1.0";
  by-version."ansi-regex"."0.1.0" = self.buildNodePackage {
    name = "ansi-regex-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ansi-regex/-/ansi-regex-0.1.0.tgz";
      name = "ansi-regex-0.1.0.tgz";
      sha1 = "55ca60db6900857c423ae9297980026f941ed903";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ansi-regex"."^0.2.0" =
    self.by-version."ansi-regex"."0.2.1";
  by-version."ansi-regex"."0.2.1" = self.buildNodePackage {
    name = "ansi-regex-0.2.1";
    version = "0.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ansi-regex/-/ansi-regex-0.2.1.tgz";
      name = "ansi-regex-0.2.1.tgz";
      sha1 = "0d8e946967a3d8143f93e24e298525fc1b2235f9";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ansi-regex"."^0.2.1" =
    self.by-version."ansi-regex"."0.2.1";
  by-spec."ansi-regex"."^1.0.0" =
    self.by-version."ansi-regex"."1.1.1";
  by-version."ansi-regex"."1.1.1" = self.buildNodePackage {
    name = "ansi-regex-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ansi-regex/-/ansi-regex-1.1.1.tgz";
      name = "ansi-regex-1.1.1.tgz";
      sha1 = "41c847194646375e6a1a5d10c3ca054ef9fc980d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ansi-regex"."^1.1.0" =
    self.by-version."ansi-regex"."1.1.1";
  by-spec."ansi-regex"."^1.1.1" =
    self.by-version."ansi-regex"."1.1.1";
  by-spec."ansi-styles"."^1.1.0" =
    self.by-version."ansi-styles"."1.1.0";
  by-version."ansi-styles"."1.1.0" = self.buildNodePackage {
    name = "ansi-styles-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ansi-styles/-/ansi-styles-1.1.0.tgz";
      name = "ansi-styles-1.1.0.tgz";
      sha1 = "eaecbf66cd706882760b2f4691582b8f55d7a7de";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ansi-styles"."^2.0.1" =
    self.by-version."ansi-styles"."2.0.1";
  by-version."ansi-styles"."2.0.1" = self.buildNodePackage {
    name = "ansi-styles-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ansi-styles/-/ansi-styles-2.0.1.tgz";
      name = "ansi-styles-2.0.1.tgz";
      sha1 = "b033f57f93e2d28adeb8bc11138fa13da0fd20a3";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ansi-styles"."~1.0.0" =
    self.by-version."ansi-styles"."1.0.0";
  by-version."ansi-styles"."1.0.0" = self.buildNodePackage {
    name = "ansi-styles-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ansi-styles/-/ansi-styles-1.0.0.tgz";
      name = "ansi-styles-1.0.0.tgz";
      sha1 = "cb102df1c56f5123eab8b67cd7b98027a0279178";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ansicolors"."~0.2.1" =
    self.by-version."ansicolors"."0.2.1";
  by-version."ansicolors"."0.2.1" = self.buildNodePackage {
    name = "ansicolors-0.2.1";
    version = "0.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ansicolors/-/ansicolors-0.2.1.tgz";
      name = "ansicolors-0.2.1.tgz";
      sha1 = "be089599097b74a5c9c4a84a0cdbcdb62bd87aef";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."archiver"."~0.9.0" =
    self.by-version."archiver"."0.9.1";
  by-version."archiver"."0.9.1" = self.buildNodePackage {
    name = "archiver-0.9.1";
    version = "0.9.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/archiver/-/archiver-0.9.1.tgz";
      name = "archiver-0.9.1.tgz";
      sha1 = "69ac9967b4297185345582daa5deefbfcb664046";
    };
    deps = {
      "buffer-crc32-0.2.5" = self.by-version."buffer-crc32"."0.2.5";
      "readable-stream-1.0.33" = self.by-version."readable-stream"."1.0.33";
      "tar-stream-0.3.3" = self.by-version."tar-stream"."0.3.3";
      "zip-stream-0.3.7" = self.by-version."zip-stream"."0.3.7";
      "lazystream-0.1.0" = self.by-version."lazystream"."0.1.0";
      "file-utils-0.1.5" = self.by-version."file-utils"."0.1.5";
      "lodash-2.4.2" = self.by-version."lodash"."2.4.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."archy"."0.0.2" =
    self.by-version."archy"."0.0.2";
  by-version."archy"."0.0.2" = self.buildNodePackage {
    name = "archy-0.0.2";
    version = "0.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/archy/-/archy-0.0.2.tgz";
      name = "archy-0.0.2.tgz";
      sha1 = "910f43bf66141fc335564597abc189df44b3d35e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."archy"."~0.0.2" =
    self.by-version."archy"."0.0.2";
  by-spec."argparse"."~ 0.1.11" =
    self.by-version."argparse"."0.1.16";
  by-version."argparse"."0.1.16" = self.buildNodePackage {
    name = "argparse-0.1.16";
    version = "0.1.16";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/argparse/-/argparse-0.1.16.tgz";
      name = "argparse-0.1.16.tgz";
      sha1 = "cfd01e0fbba3d6caed049fbd758d40f65196f57c";
    };
    deps = {
      "underscore-1.7.0" = self.by-version."underscore"."1.7.0";
      "underscore.string-2.4.0" = self.by-version."underscore.string"."2.4.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."argparse"."~1.0.2" =
    self.by-version."argparse"."1.0.2";
  by-version."argparse"."1.0.2" = self.buildNodePackage {
    name = "argparse-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/argparse/-/argparse-1.0.2.tgz";
      name = "argparse-1.0.2.tgz";
      sha1 = "bcfae39059656d1973d0b9e6a1a74154b5a9a136";
    };
    deps = {
      "lodash-3.9.3" = self.by-version."lodash"."3.9.3";
      "sprintf-js-1.0.2" = self.by-version."sprintf-js"."1.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."array-filter"."~0.0.0" =
    self.by-version."array-filter"."0.0.1";
  by-version."array-filter"."0.0.1" = self.buildNodePackage {
    name = "array-filter-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/array-filter/-/array-filter-0.0.1.tgz";
      name = "array-filter-0.0.1.tgz";
      sha1 = "7da8cf2e26628ed732803581fd21f67cacd2eeec";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."array-map"."~0.0.0" =
    self.by-version."array-map"."0.0.0";
  by-version."array-map"."0.0.0" = self.buildNodePackage {
    name = "array-map-0.0.0";
    version = "0.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/array-map/-/array-map-0.0.0.tgz";
      name = "array-map-0.0.0.tgz";
      sha1 = "88a2bab73d1cf7bcd5c1b118a003f66f665fa662";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."array-reduce"."~0.0.0" =
    self.by-version."array-reduce"."0.0.0";
  by-version."array-reduce"."0.0.0" = self.buildNodePackage {
    name = "array-reduce-0.0.0";
    version = "0.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/array-reduce/-/array-reduce-0.0.0.tgz";
      name = "array-reduce-0.0.0.tgz";
      sha1 = "173899d3ffd1c7d9383e4479525dbe278cab5f2b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."asap"."^1.0.0" =
    self.by-version."asap"."1.0.0";
  by-version."asap"."1.0.0" = self.buildNodePackage {
    name = "asap-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/asap/-/asap-1.0.0.tgz";
      name = "asap-1.0.0.tgz";
      sha1 = "b2a45da5fdfa20b0496fc3768cc27c12fa916a7d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ascli"."~0.3" =
    self.by-version."ascli"."0.3.0";
  by-version."ascli"."0.3.0" = self.buildNodePackage {
    name = "ascli-0.3.0";
    version = "0.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ascli/-/ascli-0.3.0.tgz";
      name = "ascli-0.3.0.tgz";
      sha1 = "5e66230e5219fe3e8952a4efb4f20fae596a813a";
    };
    deps = {
      "colour-0.7.1" = self.by-version."colour"."0.7.1";
      "optjs-3.2.1-boom" = self.by-version."optjs"."3.2.1-boom";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."asn1"."0.1.11" =
    self.by-version."asn1"."0.1.11";
  by-version."asn1"."0.1.11" = self.buildNodePackage {
    name = "asn1-0.1.11";
    version = "0.1.11";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/asn1/-/asn1-0.1.11.tgz";
      name = "asn1-0.1.11.tgz";
      sha1 = "559be18376d08a4ec4dbe80877d27818639b2df7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."assert-plus"."^0.1.5" =
    self.by-version."assert-plus"."0.1.5";
  by-version."assert-plus"."0.1.5" = self.buildNodePackage {
    name = "assert-plus-0.1.5";
    version = "0.1.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/assert-plus/-/assert-plus-0.1.5.tgz";
      name = "assert-plus-0.1.5.tgz";
      sha1 = "ee74009413002d84cec7219c6ac811812e723160";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."async"."0.2.10" =
    self.by-version."async"."0.2.10";
  by-version."async"."0.2.10" = self.buildNodePackage {
    name = "async-0.2.10";
    version = "0.2.10";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/async/-/async-0.2.10.tgz";
      name = "async-0.2.10.tgz";
      sha1 = "b6bbe0b0674b9d719708ca38de8c237cb526c3d1";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."async"."0.9.0" =
    self.by-version."async"."0.9.0";
  by-version."async"."0.9.0" = self.buildNodePackage {
    name = "async-0.9.0";
    version = "0.9.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/async/-/async-0.9.0.tgz";
      name = "async-0.9.0.tgz";
      sha1 = "ac3613b1da9bed1b47510bb4651b8931e47146c7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "async" = self.by-version."async"."0.9.0";
  by-spec."async"."^0.8.0" =
    self.by-version."async"."0.8.0";
  by-version."async"."0.8.0" = self.buildNodePackage {
    name = "async-0.8.0";
    version = "0.8.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/async/-/async-0.8.0.tgz";
      name = "async-0.8.0.tgz";
      sha1 = "ee65ec77298c2ff1456bc4418a052d0f06435112";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."async"."^0.9.0" =
    self.by-version."async"."0.9.2";
  by-version."async"."0.9.2" = self.buildNodePackage {
    name = "async-0.9.2";
    version = "0.9.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/async/-/async-0.9.2.tgz";
      name = "async-0.9.2.tgz";
      sha1 = "aea74d5e61c1f899613bf64bda66d4c78f2fd17d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."async"."~0.1.22" =
    self.by-version."async"."0.1.22";
  by-version."async"."0.1.22" = self.buildNodePackage {
    name = "async-0.1.22";
    version = "0.1.22";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/async/-/async-0.1.22.tgz";
      name = "async-0.1.22.tgz";
      sha1 = "0fc1aaa088a0e3ef0ebe2d8831bab0dcf8845061";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."async"."~0.2.6" =
    self.by-version."async"."0.2.10";
  by-spec."async"."~0.2.7" =
    self.by-version."async"."0.2.10";
  by-spec."async"."~0.2.8" =
    self.by-version."async"."0.2.10";
  by-spec."async"."~0.2.9" =
    self.by-version."async"."0.2.10";
  by-spec."async"."~0.8.0" =
    self.by-version."async"."0.8.0";
  by-spec."async"."~0.9.0" =
    self.by-version."async"."0.9.2";
  by-spec."aws-sign"."~0.2.0" =
    self.by-version."aws-sign"."0.2.0";
  by-version."aws-sign"."0.2.0" = self.buildNodePackage {
    name = "aws-sign-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/aws-sign/-/aws-sign-0.2.0.tgz";
      name = "aws-sign-0.2.0.tgz";
      sha1 = "c55013856c8194ec854a0cbec90aab5a04ce3ac5";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."aws-sign"."~0.3.0" =
    self.by-version."aws-sign"."0.3.0";
  by-version."aws-sign"."0.3.0" = self.buildNodePackage {
    name = "aws-sign-0.3.0";
    version = "0.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/aws-sign/-/aws-sign-0.3.0.tgz";
      name = "aws-sign-0.3.0.tgz";
      sha1 = "3d81ca69b474b1e16518728b51c24ff0bbedc6e9";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."aws-sign2"."~0.5.0" =
    self.by-version."aws-sign2"."0.5.0";
  by-version."aws-sign2"."0.5.0" = self.buildNodePackage {
    name = "aws-sign2-0.5.0";
    version = "0.5.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/aws-sign2/-/aws-sign2-0.5.0.tgz";
      name = "aws-sign2-0.5.0.tgz";
      sha1 = "c57103f7a17fc037f02d7c2e64b602ea223f7d63";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."balanced-match"."^0.2.0" =
    self.by-version."balanced-match"."0.2.0";
  by-version."balanced-match"."0.2.0" = self.buildNodePackage {
    name = "balanced-match-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/balanced-match/-/balanced-match-0.2.0.tgz";
      name = "balanced-match-0.2.0.tgz";
      sha1 = "38f6730c03aab6d5edbb52bd934885e756d71674";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."bencode"."^0.6.0" =
    self.by-version."bencode"."0.6.0";
  by-version."bencode"."0.6.0" = self.buildNodePackage {
    name = "bencode-0.6.0";
    version = "0.6.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/bencode/-/bencode-0.6.0.tgz";
      name = "bencode-0.6.0.tgz";
      sha1 = "04d6190e1d7467c56a969e1a94d1668076eac050";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."bencode"."^0.7.0" =
    self.by-version."bencode"."0.7.0";
  by-version."bencode"."0.7.0" = self.buildNodePackage {
    name = "bencode-0.7.0";
    version = "0.7.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/bencode/-/bencode-0.7.0.tgz";
      name = "bencode-0.7.0.tgz";
      sha1 = "811ed647c0118945e41bb4bbbdea9a2c78a17083";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."better-curry"."1.x.x" =
    self.by-version."better-curry"."1.6.0";
  by-version."better-curry"."1.6.0" = self.buildNodePackage {
    name = "better-curry-1.6.0";
    version = "1.6.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/better-curry/-/better-curry-1.6.0.tgz";
      name = "better-curry-1.6.0.tgz";
      sha1 = "38f716b24c8cee07a262abc41c22c314e20e3869";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."binary".">= 0.3.0 < 1" =
    self.by-version."binary"."0.3.0";
  by-version."binary"."0.3.0" = self.buildNodePackage {
    name = "binary-0.3.0";
    version = "0.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/binary/-/binary-0.3.0.tgz";
      name = "binary-0.3.0.tgz";
      sha1 = "9f60553bc5ce8c3386f3b553cff47462adecaa79";
    };
    deps = {
      "chainsaw-0.1.0" = self.by-version."chainsaw"."0.1.0";
      "buffers-0.1.1" = self.by-version."buffers"."0.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."binary"."~0.3.0" =
    self.by-version."binary"."0.3.0";
  by-spec."binary-search-tree"."0.2.4" =
    self.by-version."binary-search-tree"."0.2.4";
  by-version."binary-search-tree"."0.2.4" = self.buildNodePackage {
    name = "binary-search-tree-0.2.4";
    version = "0.2.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/binary-search-tree/-/binary-search-tree-0.2.4.tgz";
      name = "binary-search-tree-0.2.4.tgz";
      sha1 = "14fe106366a59ca8efb68c0ae30c36aaff0cd510";
    };
    deps = {
      "underscore-1.4.4" = self.by-version."underscore"."1.4.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."binaryheap".">= 0.0.3" =
    self.by-version."binaryheap"."0.0.3";
  by-version."binaryheap"."0.0.3" = self.buildNodePackage {
    name = "binaryheap-0.0.3";
    version = "0.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/binaryheap/-/binaryheap-0.0.3.tgz";
      name = "binaryheap-0.0.3.tgz";
      sha1 = "0d6136c84e9f1a5a90c0b97178c3e00df59820d6";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."bitfield"."^0.1.0" =
    self.by-version."bitfield"."0.1.0";
  by-version."bitfield"."0.1.0" = self.buildNodePackage {
    name = "bitfield-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/bitfield/-/bitfield-0.1.0.tgz";
      name = "bitfield-0.1.0.tgz";
      sha1 = "b05d8b5f0d09f2df35a9db3b3a62d3808c46c457";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."bittorrent-dht"."^3.0.0" =
    self.by-version."bittorrent-dht"."3.2.1";
  by-version."bittorrent-dht"."3.2.1" = self.buildNodePackage {
    name = "bittorrent-dht-3.2.1";
    version = "3.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/bittorrent-dht/-/bittorrent-dht-3.2.1.tgz";
      name = "bittorrent-dht-3.2.1.tgz";
      sha1 = "785162fa8abff319e6dff2d733360bd726cd1127";
    };
    deps = {
      "addr-to-ip-port-1.4.1" = self.by-version."addr-to-ip-port"."1.4.1";
      "bencode-0.7.0" = self.by-version."bencode"."0.7.0";
      "buffer-equal-0.0.1" = self.by-version."buffer-equal"."0.0.1";
      "compact2string-1.4.0" = self.by-version."compact2string"."1.4.0";
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "hat-0.0.3" = self.by-version."hat"."0.0.3";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "is-ip-1.0.0" = self.by-version."is-ip"."1.0.0";
      "k-bucket-0.4.4" = self.by-version."k-bucket"."0.4.4";
      "network-address-1.0.0" = self.by-version."network-address"."1.0.0";
      "once-1.3.2" = self.by-version."once"."1.3.2";
      "run-parallel-1.1.1" = self.by-version."run-parallel"."1.1.1";
      "simple-get-1.3.3" = self.by-version."simple-get"."1.3.3";
      "string2compact-1.2.2" = self.by-version."string2compact"."1.2.2";
      "thunky-0.1.0" = self.by-version."thunky"."0.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."bittorrent-tracker"."^2.6.0" =
    self.by-version."bittorrent-tracker"."2.12.1";
  by-version."bittorrent-tracker"."2.12.1" = self.buildNodePackage {
    name = "bittorrent-tracker-2.12.1";
    version = "2.12.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/bittorrent-tracker/-/bittorrent-tracker-2.12.1.tgz";
      name = "bittorrent-tracker-2.12.1.tgz";
      sha1 = "562f0e43c6340d003b08c5dad3d4bff0eb3fd64d";
    };
    deps = {
      "bencode-0.6.0" = self.by-version."bencode"."0.6.0";
      "bn.js-1.3.0" = self.by-version."bn.js"."1.3.0";
      "buffer-equal-0.0.1" = self.by-version."buffer-equal"."0.0.1";
      "compact2string-1.4.0" = self.by-version."compact2string"."1.4.0";
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "extend.js-0.0.2" = self.by-version."extend.js"."0.0.2";
      "hat-0.0.3" = self.by-version."hat"."0.0.3";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "ip-0.3.3" = self.by-version."ip"."0.3.3";
      "once-1.3.2" = self.by-version."once"."1.3.2";
      "portfinder-0.3.0" = self.by-version."portfinder"."0.3.0";
      "run-series-1.1.1" = self.by-version."run-series"."1.1.1";
      "simple-get-1.3.3" = self.by-version."simple-get"."1.3.3";
      "string2compact-1.2.2" = self.by-version."string2compact"."1.2.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."bl"."^0.9.0" =
    self.by-version."bl"."0.9.4";
  by-version."bl"."0.9.4" = self.buildNodePackage {
    name = "bl-0.9.4";
    version = "0.9.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/bl/-/bl-0.9.4.tgz";
      name = "bl-0.9.4.tgz";
      sha1 = "4702ddf72fbe0ecd82787c00c113aea1935ad0e7";
    };
    deps = {
      "readable-stream-1.0.33" = self.by-version."readable-stream"."1.0.33";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."bl"."~0.6.0" =
    self.by-version."bl"."0.6.0";
  by-version."bl"."0.6.0" = self.buildNodePackage {
    name = "bl-0.6.0";
    version = "0.6.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/bl/-/bl-0.6.0.tgz";
      name = "bl-0.6.0.tgz";
      sha1 = "30910299937294133844ee34aa479a5344b4cd29";
    };
    deps = {
      "readable-stream-1.0.33" = self.by-version."readable-stream"."1.0.33";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."bl"."~0.9.0" =
    self.by-version."bl"."0.9.4";
  by-spec."block-stream"."*" =
    self.by-version."block-stream"."0.0.8";
  by-version."block-stream"."0.0.8" = self.buildNodePackage {
    name = "block-stream-0.0.8";
    version = "0.0.8";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/block-stream/-/block-stream-0.0.8.tgz";
      name = "block-stream-0.0.8.tgz";
      sha1 = "0688f46da2bbf9cff0c4f68225a0cb95cbe8a46b";
    };
    deps = {
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."bluebird"."^2.9.26" =
    self.by-version."bluebird"."2.9.27";
  by-version."bluebird"."2.9.27" = self.buildNodePackage {
    name = "bluebird-2.9.27";
    version = "2.9.27";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/bluebird/-/bluebird-2.9.27.tgz";
      name = "bluebird-2.9.27.tgz";
      sha1 = "8eab7da1e866998f9f71c209b9875f9949a7adca";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."bn.js"."^1.0.0" =
    self.by-version."bn.js"."1.3.0";
  by-version."bn.js"."1.3.0" = self.buildNodePackage {
    name = "bn.js-1.3.0";
    version = "1.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/bn.js/-/bn.js-1.3.0.tgz";
      name = "bn.js-1.3.0.tgz";
      sha1 = "0db4cbf96f8f23b742f5bcb9d1aa7a9994a05e83";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."bncode"."^0.2.3" =
    self.by-version."bncode"."0.2.3";
  by-version."bncode"."0.2.3" = self.buildNodePackage {
    name = "bncode-0.2.3";
    version = "0.2.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/bncode/-/bncode-0.2.3.tgz";
      name = "bncode-0.2.3.tgz";
      sha1 = "37f851dc8e47188a83fbc0f6fa4775cacc9a3296";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."bncode"."^0.5.2" =
    self.by-version."bncode"."0.5.3";
  by-version."bncode"."0.5.3" = self.buildNodePackage {
    name = "bncode-0.5.3";
    version = "0.5.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/bncode/-/bncode-0.5.3.tgz";
      name = "bncode-0.5.3.tgz";
      sha1 = "e16661697452d436bf9886238cc791b08d66a61a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."boom"."0.3.x" =
    self.by-version."boom"."0.3.8";
  by-version."boom"."0.3.8" = self.buildNodePackage {
    name = "boom-0.3.8";
    version = "0.3.8";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/boom/-/boom-0.3.8.tgz";
      name = "boom-0.3.8.tgz";
      sha1 = "c8cdb041435912741628c044ecc732d1d17c09ea";
    };
    deps = {
      "hoek-0.7.6" = self.by-version."hoek"."0.7.6";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."boom"."0.4.x" =
    self.by-version."boom"."0.4.2";
  by-version."boom"."0.4.2" = self.buildNodePackage {
    name = "boom-0.4.2";
    version = "0.4.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/boom/-/boom-0.4.2.tgz";
      name = "boom-0.4.2.tgz";
      sha1 = "7a636e9ded4efcefb19cef4947a3c67dfaee911b";
    };
    deps = {
      "hoek-0.9.1" = self.by-version."hoek"."0.9.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."boom"."2.x.x" =
    self.by-version."boom"."2.7.2";
  by-version."boom"."2.7.2" = self.buildNodePackage {
    name = "boom-2.7.2";
    version = "2.7.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/boom/-/boom-2.7.2.tgz";
      name = "boom-2.7.2.tgz";
      sha1 = "dad628d897f7fd2e32cc82197f13307971cf8354";
    };
    deps = {
      "hoek-2.14.0" = self.by-version."hoek"."2.14.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."bower"."1.3.8" =
    self.by-version."bower"."1.3.8";
  by-version."bower"."1.3.8" = self.buildNodePackage {
    name = "bower-1.3.8";
    version = "1.3.8";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/bower/-/bower-1.3.8.tgz";
      name = "bower-1.3.8.tgz";
      sha1 = "afa3338a8a88a6e084c38112ea4a15998cbee3e6";
    };
    deps = {
      "abbrev-1.0.7" = self.by-version."abbrev"."1.0.7";
      "archy-0.0.2" = self.by-version."archy"."0.0.2";
      "bower-config-0.5.2" = self.by-version."bower-config"."0.5.2";
      "bower-endpoint-parser-0.2.2" = self.by-version."bower-endpoint-parser"."0.2.2";
      "bower-json-0.4.0" = self.by-version."bower-json"."0.4.0";
      "bower-logger-0.2.2" = self.by-version."bower-logger"."0.2.2";
      "bower-registry-client-0.2.4" = self.by-version."bower-registry-client"."0.2.4";
      "cardinal-0.4.4" = self.by-version."cardinal"."0.4.4";
      "chalk-0.4.0" = self.by-version."chalk"."0.4.0";
      "chmodr-0.1.1" = self.by-version."chmodr"."0.1.1";
      "decompress-zip-0.0.8" = self.by-version."decompress-zip"."0.0.8";
      "fstream-0.1.31" = self.by-version."fstream"."0.1.31";
      "fstream-ignore-0.0.10" = self.by-version."fstream-ignore"."0.0.10";
      "glob-4.0.6" = self.by-version."glob"."4.0.6";
      "graceful-fs-3.0.8" = self.by-version."graceful-fs"."3.0.8";
      "handlebars-1.3.0" = self.by-version."handlebars"."1.3.0";
      "inquirer-0.5.1" = self.by-version."inquirer"."0.5.1";
      "insight-0.3.1" = self.by-version."insight"."0.3.1";
      "is-root-0.1.0" = self.by-version."is-root"."0.1.0";
      "junk-0.3.0" = self.by-version."junk"."0.3.0";
      "lockfile-0.4.3" = self.by-version."lockfile"."0.4.3";
      "lru-cache-2.5.2" = self.by-version."lru-cache"."2.5.2";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "mout-0.9.1" = self.by-version."mout"."0.9.1";
      "nopt-3.0.2" = self.by-version."nopt"."3.0.2";
      "opn-0.1.2" = self.by-version."opn"."0.1.2";
      "osenv-0.1.1" = self.by-version."osenv"."0.1.1";
      "p-throttler-0.0.1" = self.by-version."p-throttler"."0.0.1";
      "promptly-0.2.1" = self.by-version."promptly"."0.2.1";
      "q-1.0.1" = self.by-version."q"."1.0.1";
      "request-2.36.0" = self.by-version."request"."2.36.0";
      "request-progress-0.3.1" = self.by-version."request-progress"."0.3.1";
      "retry-0.6.1" = self.by-version."retry"."0.6.1";
      "rimraf-2.2.8" = self.by-version."rimraf"."2.2.8";
      "semver-2.3.2" = self.by-version."semver"."2.3.2";
      "shell-quote-1.4.3" = self.by-version."shell-quote"."1.4.3";
      "stringify-object-0.2.1" = self.by-version."stringify-object"."0.2.1";
      "tar-0.1.20" = self.by-version."tar"."0.1.20";
      "tmp-0.0.23" = self.by-version."tmp"."0.0.23";
      "update-notifier-0.2.2" = self.by-version."update-notifier"."0.2.2";
      "which-1.0.9" = self.by-version."which"."1.0.9";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "bower" = self.by-version."bower"."1.3.8";
  by-spec."bower"."~1.3.12" =
    self.by-version."bower"."1.3.12";
  by-version."bower"."1.3.12" = self.buildNodePackage {
    name = "bower-1.3.12";
    version = "1.3.12";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/bower/-/bower-1.3.12.tgz";
      name = "bower-1.3.12.tgz";
      sha1 = "37de0edb3904baf90aee13384a1a379a05ee214c";
    };
    deps = {
      "abbrev-1.0.7" = self.by-version."abbrev"."1.0.7";
      "archy-0.0.2" = self.by-version."archy"."0.0.2";
      "bower-config-0.5.2" = self.by-version."bower-config"."0.5.2";
      "bower-endpoint-parser-0.2.2" = self.by-version."bower-endpoint-parser"."0.2.2";
      "bower-json-0.4.0" = self.by-version."bower-json"."0.4.0";
      "bower-logger-0.2.2" = self.by-version."bower-logger"."0.2.2";
      "bower-registry-client-0.2.4" = self.by-version."bower-registry-client"."0.2.4";
      "cardinal-0.4.0" = self.by-version."cardinal"."0.4.0";
      "chalk-0.5.0" = self.by-version."chalk"."0.5.0";
      "chmodr-0.1.0" = self.by-version."chmodr"."0.1.0";
      "decompress-zip-0.0.8" = self.by-version."decompress-zip"."0.0.8";
      "fstream-1.0.6" = self.by-version."fstream"."1.0.6";
      "fstream-ignore-1.0.2" = self.by-version."fstream-ignore"."1.0.2";
      "glob-4.0.6" = self.by-version."glob"."4.0.6";
      "graceful-fs-3.0.8" = self.by-version."graceful-fs"."3.0.8";
      "handlebars-2.0.0" = self.by-version."handlebars"."2.0.0";
      "inquirer-0.7.1" = self.by-version."inquirer"."0.7.1";
      "insight-0.4.3" = self.by-version."insight"."0.4.3";
      "is-root-1.0.0" = self.by-version."is-root"."1.0.0";
      "junk-1.0.1" = self.by-version."junk"."1.0.1";
      "lockfile-1.0.1" = self.by-version."lockfile"."1.0.1";
      "lru-cache-2.5.2" = self.by-version."lru-cache"."2.5.2";
      "mkdirp-0.5.0" = self.by-version."mkdirp"."0.5.0";
      "mout-0.9.1" = self.by-version."mout"."0.9.1";
      "nopt-3.0.2" = self.by-version."nopt"."3.0.2";
      "opn-1.0.2" = self.by-version."opn"."1.0.2";
      "osenv-0.1.0" = self.by-version."osenv"."0.1.0";
      "p-throttler-0.1.0" = self.by-version."p-throttler"."0.1.0";
      "promptly-0.2.0" = self.by-version."promptly"."0.2.0";
      "q-1.0.1" = self.by-version."q"."1.0.1";
      "request-2.42.0" = self.by-version."request"."2.42.0";
      "request-progress-0.3.0" = self.by-version."request-progress"."0.3.0";
      "retry-0.6.0" = self.by-version."retry"."0.6.0";
      "rimraf-2.2.8" = self.by-version."rimraf"."2.2.8";
      "semver-2.3.2" = self.by-version."semver"."2.3.2";
      "shell-quote-1.4.3" = self.by-version."shell-quote"."1.4.3";
      "stringify-object-1.0.1" = self.by-version."stringify-object"."1.0.1";
      "tar-fs-0.5.2" = self.by-version."tar-fs"."0.5.2";
      "tmp-0.0.23" = self.by-version."tmp"."0.0.23";
      "update-notifier-0.2.0" = self.by-version."update-notifier"."0.2.0";
      "which-1.0.9" = self.by-version."which"."1.0.9";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."bower-config"."~0.5.0" =
    self.by-version."bower-config"."0.5.2";
  by-version."bower-config"."0.5.2" = self.buildNodePackage {
    name = "bower-config-0.5.2";
    version = "0.5.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/bower-config/-/bower-config-0.5.2.tgz";
      name = "bower-config-0.5.2.tgz";
      sha1 = "1f7d2e899e99b70c29a613e70d4c64590414b22e";
    };
    deps = {
      "graceful-fs-2.0.3" = self.by-version."graceful-fs"."2.0.3";
      "mout-0.9.1" = self.by-version."mout"."0.9.1";
      "optimist-0.6.1" = self.by-version."optimist"."0.6.1";
      "osenv-0.0.3" = self.by-version."osenv"."0.0.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."bower-config"."~0.5.2" =
    self.by-version."bower-config"."0.5.2";
  by-spec."bower-endpoint-parser"."~0.2.2" =
    self.by-version."bower-endpoint-parser"."0.2.2";
  by-version."bower-endpoint-parser"."0.2.2" = self.buildNodePackage {
    name = "bower-endpoint-parser-0.2.2";
    version = "0.2.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/bower-endpoint-parser/-/bower-endpoint-parser-0.2.2.tgz";
      name = "bower-endpoint-parser-0.2.2.tgz";
      sha1 = "00b565adbfab6f2d35addde977e97962acbcb3f6";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."bower-json"."~0.4.0" =
    self.by-version."bower-json"."0.4.0";
  by-version."bower-json"."0.4.0" = self.buildNodePackage {
    name = "bower-json-0.4.0";
    version = "0.4.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/bower-json/-/bower-json-0.4.0.tgz";
      name = "bower-json-0.4.0.tgz";
      sha1 = "a99c3ccf416ef0590ed0ded252c760f1c6d93766";
    };
    deps = {
      "deep-extend-0.2.11" = self.by-version."deep-extend"."0.2.11";
      "graceful-fs-2.0.3" = self.by-version."graceful-fs"."2.0.3";
      "intersect-0.0.3" = self.by-version."intersect"."0.0.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."bower-logger"."~0.2.2" =
    self.by-version."bower-logger"."0.2.2";
  by-version."bower-logger"."0.2.2" = self.buildNodePackage {
    name = "bower-logger-0.2.2";
    version = "0.2.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/bower-logger/-/bower-logger-0.2.2.tgz";
      name = "bower-logger-0.2.2.tgz";
      sha1 = "39be07e979b2fc8e03a94634205ed9422373d381";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."bower-registry-client"."~0.2.0" =
    self.by-version."bower-registry-client"."0.2.4";
  by-version."bower-registry-client"."0.2.4" = self.buildNodePackage {
    name = "bower-registry-client-0.2.4";
    version = "0.2.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/bower-registry-client/-/bower-registry-client-0.2.4.tgz";
      name = "bower-registry-client-0.2.4.tgz";
      sha1 = "269fc7e898b627fb939d1144a593254d7fbbeebc";
    };
    deps = {
      "async-0.2.10" = self.by-version."async"."0.2.10";
      "bower-config-0.5.2" = self.by-version."bower-config"."0.5.2";
      "graceful-fs-2.0.3" = self.by-version."graceful-fs"."2.0.3";
      "lru-cache-2.3.1" = self.by-version."lru-cache"."2.3.1";
      "request-2.51.0" = self.by-version."request"."2.51.0";
      "request-replay-0.2.0" = self.by-version."request-replay"."0.2.0";
      "rimraf-2.2.8" = self.by-version."rimraf"."2.2.8";
      "mkdirp-0.3.5" = self.by-version."mkdirp"."0.3.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."brace-expansion"."^1.0.0" =
    self.by-version."brace-expansion"."1.1.0";
  by-version."brace-expansion"."1.1.0" = self.buildNodePackage {
    name = "brace-expansion-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/brace-expansion/-/brace-expansion-1.1.0.tgz";
      name = "brace-expansion-1.1.0.tgz";
      sha1 = "c9b7d03c03f37bc704be100e522b40db8f6cfcd9";
    };
    deps = {
      "balanced-match-0.2.0" = self.by-version."balanced-match"."0.2.0";
      "concat-map-0.0.1" = self.by-version."concat-map"."0.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."buffer-crc32"."~0.2.1" =
    self.by-version."buffer-crc32"."0.2.5";
  by-version."buffer-crc32"."0.2.5" = self.buildNodePackage {
    name = "buffer-crc32-0.2.5";
    version = "0.2.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/buffer-crc32/-/buffer-crc32-0.2.5.tgz";
      name = "buffer-crc32-0.2.5.tgz";
      sha1 = "db003ac2671e62ebd6ece78ea2c2e1b405736e91";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."buffer-equal"."0.0.1" =
    self.by-version."buffer-equal"."0.0.1";
  by-version."buffer-equal"."0.0.1" = self.buildNodePackage {
    name = "buffer-equal-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/buffer-equal/-/buffer-equal-0.0.1.tgz";
      name = "buffer-equal-0.0.1.tgz";
      sha1 = "91bc74b11ea405bc916bc6aa908faafa5b4aac4b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."buffercursor".">= 0.0.12" =
    self.by-version."buffercursor"."0.0.12";
  by-version."buffercursor"."0.0.12" = self.buildNodePackage {
    name = "buffercursor-0.0.12";
    version = "0.0.12";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/buffercursor/-/buffercursor-0.0.12.tgz";
      name = "buffercursor-0.0.12.tgz";
      sha1 = "78a9a7f4343ae7d820a8999acc80de591e25a779";
    };
    deps = {
      "verror-1.6.0" = self.by-version."verror"."1.6.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."buffers"."~0.1.1" =
    self.by-version."buffers"."0.1.1";
  by-version."buffers"."0.1.1" = self.buildNodePackage {
    name = "buffers-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/buffers/-/buffers-0.1.1.tgz";
      name = "buffers-0.1.1.tgz";
      sha1 = "b24579c3bed4d6d396aeee6d9a8ae7f5482ab7bb";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."bufferview"."~1" =
    self.by-version."bufferview"."1.0.1";
  by-version."bufferview"."1.0.1" = self.buildNodePackage {
    name = "bufferview-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/bufferview/-/bufferview-1.0.1.tgz";
      name = "bufferview-1.0.1.tgz";
      sha1 = "7afd74a45f937fa422a1d338c08bbfdc76cd725d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."bunyan"."~1.3.5" =
    self.by-version."bunyan"."1.3.6";
  by-version."bunyan"."1.3.6" = self.buildNodePackage {
    name = "bunyan-1.3.6";
    version = "1.3.6";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/bunyan/-/bunyan-1.3.6.tgz";
      name = "bunyan-1.3.6.tgz";
      sha1 = "c43337a7b0dce663d8223367bab05195b90b476a";
    };
    deps = {
    };
    optionalDependencies = {
      "dtrace-provider-0.4.0" = self.by-version."dtrace-provider"."0.4.0";
      "mv-2.0.3" = self.by-version."mv"."2.0.3";
      "safe-json-stringify-1.0.3" = self.by-version."safe-json-stringify"."1.0.3";
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."bunyan-prettystream"."~0.1.3" =
    self.by-version."bunyan-prettystream"."0.1.3";
  by-version."bunyan-prettystream"."0.1.3" = self.buildNodePackage {
    name = "bunyan-prettystream-0.1.3";
    version = "0.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/bunyan-prettystream/-/bunyan-prettystream-0.1.3.tgz";
      name = "bunyan-prettystream-0.1.3.tgz";
      sha1 = "6c3b713266f6ad32007c7b6ab1e998a245349d98";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."bytebuffer"."~3 >=3.5" =
    self.by-version."bytebuffer"."3.5.4";
  by-version."bytebuffer"."3.5.4" = self.buildNodePackage {
    name = "bytebuffer-3.5.4";
    version = "3.5.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/bytebuffer/-/bytebuffer-3.5.4.tgz";
      name = "bytebuffer-3.5.4.tgz";
      sha1 = "436e2733174f96aaa978b0926749e83fa162e786";
    };
    deps = {
      "long-2.2.3" = self.by-version."long"."2.2.3";
      "bufferview-1.0.1" = self.by-version."bufferview"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."cardinal"."0.4.0" =
    self.by-version."cardinal"."0.4.0";
  by-version."cardinal"."0.4.0" = self.buildNodePackage {
    name = "cardinal-0.4.0";
    version = "0.4.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/cardinal/-/cardinal-0.4.0.tgz";
      name = "cardinal-0.4.0.tgz";
      sha1 = "7d10aafb20837bde043c45e43a0c8c28cdaae45e";
    };
    deps = {
      "redeyed-0.4.4" = self.by-version."redeyed"."0.4.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."cardinal"."~0.4.0" =
    self.by-version."cardinal"."0.4.4";
  by-version."cardinal"."0.4.4" = self.buildNodePackage {
    name = "cardinal-0.4.4";
    version = "0.4.4";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/cardinal/-/cardinal-0.4.4.tgz";
      name = "cardinal-0.4.4.tgz";
      sha1 = "ca5bb68a5b511b90fe93b9acea49bdee5c32bfe2";
    };
    deps = {
      "redeyed-0.4.4" = self.by-version."redeyed"."0.4.4";
      "ansicolors-0.2.1" = self.by-version."ansicolors"."0.2.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."caseless"."~0.10.0" =
    self.by-version."caseless"."0.10.0";
  by-version."caseless"."0.10.0" = self.buildNodePackage {
    name = "caseless-0.10.0";
    version = "0.10.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/caseless/-/caseless-0.10.0.tgz";
      name = "caseless-0.10.0.tgz";
      sha1 = "ed6b2719adcd1fd18f58dc081c0f1a5b43963909";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."caseless"."~0.6.0" =
    self.by-version."caseless"."0.6.0";
  by-version."caseless"."0.6.0" = self.buildNodePackage {
    name = "caseless-0.6.0";
    version = "0.6.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/caseless/-/caseless-0.6.0.tgz";
      name = "caseless-0.6.0.tgz";
      sha1 = "8167c1ab8397fb5bb95f96d28e5a81c50f247ac4";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."caseless"."~0.8.0" =
    self.by-version."caseless"."0.8.0";
  by-version."caseless"."0.8.0" = self.buildNodePackage {
    name = "caseless-0.8.0";
    version = "0.8.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/caseless/-/caseless-0.8.0.tgz";
      name = "caseless-0.8.0.tgz";
      sha1 = "5bca2881d41437f54b2407ebe34888c7b9ad4f7d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."castv2"."~0.1.4" =
    self.by-version."castv2"."0.1.4";
  by-version."castv2"."0.1.4" = self.buildNodePackage {
    name = "castv2-0.1.4";
    version = "0.1.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/castv2/-/castv2-0.1.4.tgz";
      name = "castv2-0.1.4.tgz";
      sha1 = "f67a8bc4883dc0e1ba0e66ae937c3c9f9914974b";
    };
    deps = {
      "debug-0.8.1" = self.by-version."debug"."0.8.1";
      "protobufjs-3.8.2" = self.by-version."protobufjs"."3.8.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."castv2-client"."0.0.8" =
    self.by-version."castv2-client"."0.0.8";
  by-version."castv2-client"."0.0.8" = self.buildNodePackage {
    name = "castv2-client-0.0.8";
    version = "0.0.8";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/castv2-client/-/castv2-client-0.0.8.tgz";
      name = "castv2-client-0.0.8.tgz";
      sha1 = "a47adf5cc10575e2a71f3b05eb2b72c8d26bbbdc";
    };
    deps = {
      "debug-1.0.4" = self.by-version."debug"."1.0.4";
      "castv2-0.1.4" = self.by-version."castv2"."0.1.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."chainsaw"."~0.1.0" =
    self.by-version."chainsaw"."0.1.0";
  by-version."chainsaw"."0.1.0" = self.buildNodePackage {
    name = "chainsaw-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/chainsaw/-/chainsaw-0.1.0.tgz";
      name = "chainsaw-0.1.0.tgz";
      sha1 = "5eab50b28afe58074d0d58291388828b5e5fbc98";
    };
    deps = {
      "traverse-0.3.9" = self.by-version."traverse"."0.3.9";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."chalk"."0.5.0" =
    self.by-version."chalk"."0.5.0";
  by-version."chalk"."0.5.0" = self.buildNodePackage {
    name = "chalk-0.5.0";
    version = "0.5.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/chalk/-/chalk-0.5.0.tgz";
      name = "chalk-0.5.0.tgz";
      sha1 = "375dfccbc21c0a60a8b61bc5b78f3dc2a55c212f";
    };
    deps = {
      "ansi-styles-1.1.0" = self.by-version."ansi-styles"."1.1.0";
      "escape-string-regexp-1.0.3" = self.by-version."escape-string-regexp"."1.0.3";
      "has-ansi-0.1.0" = self.by-version."has-ansi"."0.1.0";
      "strip-ansi-0.3.0" = self.by-version."strip-ansi"."0.3.0";
      "supports-color-0.2.0" = self.by-version."supports-color"."0.2.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."chalk"."^0.5.0" =
    self.by-version."chalk"."0.5.1";
  by-version."chalk"."0.5.1" = self.buildNodePackage {
    name = "chalk-0.5.1";
    version = "0.5.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/chalk/-/chalk-0.5.1.tgz";
      name = "chalk-0.5.1.tgz";
      sha1 = "663b3a648b68b55d04690d49167aa837858f2174";
    };
    deps = {
      "ansi-styles-1.1.0" = self.by-version."ansi-styles"."1.1.0";
      "escape-string-regexp-1.0.3" = self.by-version."escape-string-regexp"."1.0.3";
      "has-ansi-0.1.0" = self.by-version."has-ansi"."0.1.0";
      "strip-ansi-0.3.0" = self.by-version."strip-ansi"."0.3.0";
      "supports-color-0.2.0" = self.by-version."supports-color"."0.2.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."chalk"."^0.5.1" =
    self.by-version."chalk"."0.5.1";
  by-spec."chalk"."^1.0.0" =
    self.by-version."chalk"."1.0.0";
  by-version."chalk"."1.0.0" = self.buildNodePackage {
    name = "chalk-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/chalk/-/chalk-1.0.0.tgz";
      name = "chalk-1.0.0.tgz";
      sha1 = "b3cf4ed0ff5397c99c75b8f679db2f52831f96dc";
    };
    deps = {
      "ansi-styles-2.0.1" = self.by-version."ansi-styles"."2.0.1";
      "escape-string-regexp-1.0.3" = self.by-version."escape-string-regexp"."1.0.3";
      "has-ansi-1.0.3" = self.by-version."has-ansi"."1.0.3";
      "strip-ansi-2.0.1" = self.by-version."strip-ansi"."2.0.1";
      "supports-color-1.3.1" = self.by-version."supports-color"."1.3.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."chalk"."~0.4.0" =
    self.by-version."chalk"."0.4.0";
  by-version."chalk"."0.4.0" = self.buildNodePackage {
    name = "chalk-0.4.0";
    version = "0.4.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/chalk/-/chalk-0.4.0.tgz";
      name = "chalk-0.4.0.tgz";
      sha1 = "5199a3ddcd0c1efe23bc08c1b027b06176e0c64f";
    };
    deps = {
      "has-color-0.1.7" = self.by-version."has-color"."0.1.7";
      "ansi-styles-1.0.0" = self.by-version."ansi-styles"."1.0.0";
      "strip-ansi-0.1.1" = self.by-version."strip-ansi"."0.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."charenc".">= 0.0.1" =
    self.by-version."charenc"."0.0.1";
  by-version."charenc"."0.0.1" = self.buildNodePackage {
    name = "charenc-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/charenc/-/charenc-0.0.1.tgz";
      name = "charenc-0.0.1.tgz";
      sha1 = "004cff9feaf102382ed12db58dd6f962796d6e88";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."chmodr"."0.1.0" =
    self.by-version."chmodr"."0.1.0";
  by-version."chmodr"."0.1.0" = self.buildNodePackage {
    name = "chmodr-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/chmodr/-/chmodr-0.1.0.tgz";
      name = "chmodr-0.1.0.tgz";
      sha1 = "e09215a1d51542db2a2576969765bcf6125583eb";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."chmodr"."~0.1.0" =
    self.by-version."chmodr"."0.1.1";
  by-version."chmodr"."0.1.1" = self.buildNodePackage {
    name = "chmodr-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/chmodr/-/chmodr-0.1.1.tgz";
      name = "chmodr-0.1.1.tgz";
      sha1 = "115c8f9ec62be3ef019085782c9448e471560261";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."chromecast-js"."git+https://git.popcorntime.io/mirrors/chromecast-js.git" =
    self.by-version."chromecast-js"."0.1.6";
  by-version."chromecast-js"."0.1.6" = self.buildNodePackage {
    name = "chromecast-js-0.1.6";
    version = "0.1.6";
    bin = false;
    src = fetchgit {
      url = "https://git.popcorntime.io/mirrors/chromecast-js.git";
      rev = "89e51ef518e69b4b80a0ad8966bf57f433c19748";
      sha256 = "b95260d5c65b46b0677167d43c294ec785aa02e3f85b171d45c945e574f6f298";
    };
    deps = {
      "castv2-client-0.0.8" = self.by-version."castv2-client"."0.0.8";
      "debug-1.0.4" = self.by-version."debug"."1.0.4";
      "node-ssdp-2.2.1" = self.by-version."node-ssdp"."2.2.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "chromecast-js" = self.by-version."chromecast-js"."0.1.6";
  by-spec."cli"."0.6.x" =
    self.by-version."cli"."0.6.6";
  by-version."cli"."0.6.6" = self.buildNodePackage {
    name = "cli-0.6.6";
    version = "0.6.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/cli/-/cli-0.6.6.tgz";
      name = "cli-0.6.6.tgz";
      sha1 = "02ad44a380abf27adac5e6f0cdd7b043d74c53e3";
    };
    deps = {
      "glob-3.2.11" = self.by-version."glob"."3.2.11";
      "exit-0.1.2" = self.by-version."exit"."0.1.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."cli-color"."~0.2.2" =
    self.by-version."cli-color"."0.2.3";
  by-version."cli-color"."0.2.3" = self.buildNodePackage {
    name = "cli-color-0.2.3";
    version = "0.2.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/cli-color/-/cli-color-0.2.3.tgz";
      name = "cli-color-0.2.3.tgz";
      sha1 = "0a25ceae5a6a1602be7f77d28563c36700274e88";
    };
    deps = {
      "es5-ext-0.9.2" = self.by-version."es5-ext"."0.9.2";
      "memoizee-0.2.6" = self.by-version."memoizee"."0.2.6";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."cli-color"."~0.3.2" =
    self.by-version."cli-color"."0.3.3";
  by-version."cli-color"."0.3.3" = self.buildNodePackage {
    name = "cli-color-0.3.3";
    version = "0.3.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/cli-color/-/cli-color-0.3.3.tgz";
      name = "cli-color-0.3.3.tgz";
      sha1 = "12d5bdd158ff8a0b0db401198913c03df069f6f5";
    };
    deps = {
      "d-0.1.1" = self.by-version."d"."0.1.1";
      "es5-ext-0.10.7" = self.by-version."es5-ext"."0.10.7";
      "memoizee-0.3.8" = self.by-version."memoizee"."0.3.8";
      "timers-ext-0.1.0" = self.by-version."timers-ext"."0.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."cli-width"."^1.0.1" =
    self.by-version."cli-width"."1.0.1";
  by-version."cli-width"."1.0.1" = self.buildNodePackage {
    name = "cli-width-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/cli-width/-/cli-width-1.0.1.tgz";
      name = "cli-width-1.0.1.tgz";
      sha1 = "14d4f6870234d91e97f7dd81e76be8271410a1ef";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."clivas"."^0.1.4" =
    self.by-version."clivas"."0.1.4";
  by-version."clivas"."0.1.4" = self.buildNodePackage {
    name = "clivas-0.1.4";
    version = "0.1.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/clivas/-/clivas-0.1.4.tgz";
      name = "clivas-0.1.4.tgz";
      sha1 = "e1c1e481d1273d57f1752132b0e4410a0d88235a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."coffee-script"."~1.3.3" =
    self.by-version."coffee-script"."1.3.3";
  by-version."coffee-script"."1.3.3" = self.buildNodePackage {
    name = "coffee-script-1.3.3";
    version = "1.3.3";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/coffee-script/-/coffee-script-1.3.3.tgz";
      name = "coffee-script-1.3.3.tgz";
      sha1 = "150d6b4cb522894369efed6a2101c20bc7f4a4f4";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."collections".">=2.0.1 <3.0.0" =
    self.by-version."collections"."2.0.1";
  by-version."collections"."2.0.1" = self.buildNodePackage {
    name = "collections-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/collections/-/collections-2.0.1.tgz";
      name = "collections-2.0.1.tgz";
      sha1 = "ee201b142bd1ee5b37a95d62fe13062d87d83db0";
    };
    deps = {
      "weak-map-1.0.5" = self.by-version."weak-map"."1.0.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."colors"."~0.6.2" =
    self.by-version."colors"."0.6.2";
  by-version."colors"."0.6.2" = self.buildNodePackage {
    name = "colors-0.6.2";
    version = "0.6.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/colors/-/colors-0.6.2.tgz";
      name = "colors-0.6.2.tgz";
      sha1 = "2423fe6678ac0c5dae8852e5d0e5be08c997abcc";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."colour"."*" =
    self.by-version."colour"."0.7.1";
  by-version."colour"."0.7.1" = self.buildNodePackage {
    name = "colour-0.7.1";
    version = "0.7.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/colour/-/colour-0.7.1.tgz";
      name = "colour-0.7.1.tgz";
      sha1 = "9cb169917ec5d12c0736d3e8685746df1cadf778";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."combined-stream"."~0.0.4" =
    self.by-version."combined-stream"."0.0.7";
  by-version."combined-stream"."0.0.7" = self.buildNodePackage {
    name = "combined-stream-0.0.7";
    version = "0.0.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/combined-stream/-/combined-stream-0.0.7.tgz";
      name = "combined-stream-0.0.7.tgz";
      sha1 = "0137e657baa5a7541c57ac37ac5fc07d73b4dc1f";
    };
    deps = {
      "delayed-stream-0.0.5" = self.by-version."delayed-stream"."0.0.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."combined-stream"."~0.0.5" =
    self.by-version."combined-stream"."0.0.7";
  by-spec."combined-stream"."~1.0.1" =
    self.by-version."combined-stream"."1.0.3";
  by-version."combined-stream"."1.0.3" = self.buildNodePackage {
    name = "combined-stream-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/combined-stream/-/combined-stream-1.0.3.tgz";
      name = "combined-stream-1.0.3.tgz";
      sha1 = "c224cc35d3cb98e25dead532472a18e8f75df5ab";
    };
    deps = {
      "delayed-stream-1.0.0" = self.by-version."delayed-stream"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."commander"."^2.8.1" =
    self.by-version."commander"."2.8.1";
  by-version."commander"."2.8.1" = self.buildNodePackage {
    name = "commander-2.8.1";
    version = "2.8.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/commander/-/commander-2.8.1.tgz";
      name = "commander-2.8.1.tgz";
      sha1 = "06be367febfda0c330aa1e2a072d3dc9762425d4";
    };
    deps = {
      "graceful-readlink-1.0.1" = self.by-version."graceful-readlink"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."compact2string"."^1.2.0" =
    self.by-version."compact2string"."1.4.0";
  by-version."compact2string"."1.4.0" = self.buildNodePackage {
    name = "compact2string-1.4.0";
    version = "1.4.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/compact2string/-/compact2string-1.4.0.tgz";
      name = "compact2string-1.4.0.tgz";
      sha1 = "a99cd96ea000525684b269683ae2222d6eea7b49";
    };
    deps = {
      "ipaddr.js-1.0.1" = self.by-version."ipaddr.js"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."concat-map"."0.0.1" =
    self.by-version."concat-map"."0.0.1";
  by-version."concat-map"."0.0.1" = self.buildNodePackage {
    name = "concat-map-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/concat-map/-/concat-map-0.0.1.tgz";
      name = "concat-map-0.0.1.tgz";
      sha1 = "d8a96bd77fd68df7793a73036a3ba0d5405d477b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."concat-stream"."^1.4.8" =
    self.by-version."concat-stream"."1.4.8";
  by-version."concat-stream"."1.4.8" = self.buildNodePackage {
    name = "concat-stream-1.4.8";
    version = "1.4.8";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/concat-stream/-/concat-stream-1.4.8.tgz";
      name = "concat-stream-1.4.8.tgz";
      sha1 = "e8325bb89e55000e52b626d97466fde1a28cfe5d";
    };
    deps = {
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "typedarray-0.0.6" = self.by-version."typedarray"."0.0.6";
      "readable-stream-1.1.13" = self.by-version."readable-stream"."1.1.13";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."config-chain"."~1.1.5" =
    self.by-version."config-chain"."1.1.9";
  by-version."config-chain"."1.1.9" = self.buildNodePackage {
    name = "config-chain-1.1.9";
    version = "1.1.9";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/config-chain/-/config-chain-1.1.9.tgz";
      name = "config-chain-1.1.9.tgz";
      sha1 = "39ac7d4dca84faad926124c54cff25a53aa8bf6e";
    };
    deps = {
      "proto-list-1.2.4" = self.by-version."proto-list"."1.2.4";
      "ini-1.3.4" = self.by-version."ini"."1.3.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."config-chain"."~1.1.8" =
    self.by-version."config-chain"."1.1.9";
  by-spec."configstore"."^0.3.0" =
    self.by-version."configstore"."0.3.2";
  by-version."configstore"."0.3.2" = self.buildNodePackage {
    name = "configstore-0.3.2";
    version = "0.3.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/configstore/-/configstore-0.3.2.tgz";
      name = "configstore-0.3.2.tgz";
      sha1 = "25e4c16c3768abf75c5a65bc61761f495055b459";
    };
    deps = {
      "graceful-fs-3.0.8" = self.by-version."graceful-fs"."3.0.8";
      "js-yaml-3.3.1" = self.by-version."js-yaml"."3.3.1";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "object-assign-2.1.1" = self.by-version."object-assign"."2.1.1";
      "osenv-0.1.1" = self.by-version."osenv"."0.1.1";
      "user-home-1.1.1" = self.by-version."user-home"."1.1.1";
      "uuid-2.0.1" = self.by-version."uuid"."2.0.1";
      "xdg-basedir-1.0.1" = self.by-version."xdg-basedir"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."configstore"."^0.3.1" =
    self.by-version."configstore"."0.3.2";
  by-spec."configstore"."~0.2.1" =
    self.by-version."configstore"."0.2.3";
  by-version."configstore"."0.2.3" = self.buildNodePackage {
    name = "configstore-0.2.3";
    version = "0.2.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/configstore/-/configstore-0.2.3.tgz";
      name = "configstore-0.2.3.tgz";
      sha1 = "b1bdc4ad823a25423dc15d220fcc1ae1d7efab02";
    };
    deps = {
      "mkdirp-0.3.5" = self.by-version."mkdirp"."0.3.5";
      "js-yaml-3.0.2" = self.by-version."js-yaml"."3.0.2";
      "osenv-0.0.3" = self.by-version."osenv"."0.0.3";
      "graceful-fs-2.0.3" = self.by-version."graceful-fs"."2.0.3";
      "uuid-1.4.2" = self.by-version."uuid"."1.4.2";
      "object-assign-0.1.2" = self.by-version."object-assign"."0.1.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."console-browserify"."1.1.x" =
    self.by-version."console-browserify"."1.1.0";
  by-version."console-browserify"."1.1.0" = self.buildNodePackage {
    name = "console-browserify-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/console-browserify/-/console-browserify-1.1.0.tgz";
      name = "console-browserify-1.1.0.tgz";
      sha1 = "f0241c45730a9fc6323b206dbf38edc741d0bb10";
    };
    deps = {
      "date-now-0.1.4" = self.by-version."date-now"."0.1.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."cookie-jar"."~0.2.0" =
    self.by-version."cookie-jar"."0.2.0";
  by-version."cookie-jar"."0.2.0" = self.buildNodePackage {
    name = "cookie-jar-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/cookie-jar/-/cookie-jar-0.2.0.tgz";
      name = "cookie-jar-0.2.0.tgz";
      sha1 = "64ecc06ac978db795e4b5290cbe48ba3781400fa";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."cookie-jar"."~0.3.0" =
    self.by-version."cookie-jar"."0.3.0";
  by-version."cookie-jar"."0.3.0" = self.buildNodePackage {
    name = "cookie-jar-0.3.0";
    version = "0.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/cookie-jar/-/cookie-jar-0.3.0.tgz";
      name = "cookie-jar-0.3.0.tgz";
      sha1 = "bc9a27d4e2b97e186cd57c9e2063cb99fa68cccc";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."core-util-is"."~1.0.0" =
    self.by-version."core-util-is"."1.0.1";
  by-version."core-util-is"."1.0.1" = self.buildNodePackage {
    name = "core-util-is-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/core-util-is/-/core-util-is-1.0.1.tgz";
      name = "core-util-is-1.0.1.tgz";
      sha1 = "6b07085aef9a3ccac6ee53bf9d3df0c1521a5538";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."crc32-stream"."~0.2.0" =
    self.by-version."crc32-stream"."0.2.0";
  by-version."crc32-stream"."0.2.0" = self.buildNodePackage {
    name = "crc32-stream-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/crc32-stream/-/crc32-stream-0.2.0.tgz";
      name = "crc32-stream-0.2.0.tgz";
      sha1 = "5c80d480c8682f904b6f15530dbbe0b8c063dbbe";
    };
    deps = {
      "readable-stream-1.0.33" = self.by-version."readable-stream"."1.0.33";
      "buffer-crc32-0.2.5" = self.by-version."buffer-crc32"."0.2.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."crypt".">= 0.0.1" =
    self.by-version."crypt"."0.0.1";
  by-version."crypt"."0.0.1" = self.buildNodePackage {
    name = "crypt-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/crypt/-/crypt-0.0.1.tgz";
      name = "crypt-0.0.1.tgz";
      sha1 = "5f11b21a6c05ef1b5e79708366da6374ece1e6a2";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."cryptiles"."0.1.x" =
    self.by-version."cryptiles"."0.1.3";
  by-version."cryptiles"."0.1.3" = self.buildNodePackage {
    name = "cryptiles-0.1.3";
    version = "0.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/cryptiles/-/cryptiles-0.1.3.tgz";
      name = "cryptiles-0.1.3.tgz";
      sha1 = "1a556734f06d24ba34862ae9cb9e709a3afbff1c";
    };
    deps = {
      "boom-0.3.8" = self.by-version."boom"."0.3.8";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."cryptiles"."0.2.x" =
    self.by-version."cryptiles"."0.2.2";
  by-version."cryptiles"."0.2.2" = self.buildNodePackage {
    name = "cryptiles-0.2.2";
    version = "0.2.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/cryptiles/-/cryptiles-0.2.2.tgz";
      name = "cryptiles-0.2.2.tgz";
      sha1 = "ed91ff1f17ad13d3748288594f8a48a0d26f325c";
    };
    deps = {
      "boom-0.4.2" = self.by-version."boom"."0.4.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."cryptiles"."2.x.x" =
    self.by-version."cryptiles"."2.0.4";
  by-version."cryptiles"."2.0.4" = self.buildNodePackage {
    name = "cryptiles-2.0.4";
    version = "2.0.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/cryptiles/-/cryptiles-2.0.4.tgz";
      name = "cryptiles-2.0.4.tgz";
      sha1 = "09ea1775b9e1c7de7e60a99d42ab6f08ce1a1285";
    };
    deps = {
      "boom-2.7.2" = self.by-version."boom"."2.7.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."css-parse"."1.7.x" =
    self.by-version."css-parse"."1.7.0";
  by-version."css-parse"."1.7.0" = self.buildNodePackage {
    name = "css-parse-1.7.0";
    version = "1.7.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/css-parse/-/css-parse-1.7.0.tgz";
      name = "css-parse-1.7.0.tgz";
      sha1 = "321f6cf73782a6ff751111390fc05e2c657d8c9b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ctype"."0.5.3" =
    self.by-version."ctype"."0.5.3";
  by-version."ctype"."0.5.3" = self.buildNodePackage {
    name = "ctype-0.5.3";
    version = "0.5.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ctype/-/ctype-0.5.3.tgz";
      name = "ctype-0.5.3.tgz";
      sha1 = "82c18c2461f74114ef16c135224ad0b9144ca12f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."d"."~0.1.1" =
    self.by-version."d"."0.1.1";
  by-version."d"."0.1.1" = self.buildNodePackage {
    name = "d-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/d/-/d-0.1.1.tgz";
      name = "d-0.1.1.tgz";
      sha1 = "da184c535d18d8ee7ba2aa229b914009fae11309";
    };
    deps = {
      "es5-ext-0.10.7" = self.by-version."es5-ext"."0.10.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."date-now"."^0.1.4" =
    self.by-version."date-now"."0.1.4";
  by-version."date-now"."0.1.4" = self.buildNodePackage {
    name = "date-now-0.1.4";
    version = "0.1.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/date-now/-/date-now-0.1.4.tgz";
      name = "date-now-0.1.4.tgz";
      sha1 = "eaf439fd4d4848ad74e5cc7dbef200672b9e345b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."dateformat"."1.0.2-1.2.3" =
    self.by-version."dateformat"."1.0.2-1.2.3";
  by-version."dateformat"."1.0.2-1.2.3" = self.buildNodePackage {
    name = "dateformat-1.0.2-1.2.3";
    version = "1.0.2-1.2.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/dateformat/-/dateformat-1.0.2-1.2.3.tgz";
      name = "dateformat-1.0.2-1.2.3.tgz";
      sha1 = "b0220c02de98617433b72851cf47de3df2cdbee9";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."debug"."*" =
    self.by-version."debug"."2.2.0";
  by-version."debug"."2.2.0" = self.buildNodePackage {
    name = "debug-2.2.0";
    version = "2.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/debug/-/debug-2.2.0.tgz";
      name = "debug-2.2.0.tgz";
      sha1 = "f87057e995b1a1f6ae6a4960664137bc56f039da";
    };
    deps = {
      "ms-0.7.1" = self.by-version."ms"."0.7.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."debug"."^1.0.4" =
    self.by-version."debug"."1.0.4";
  by-version."debug"."1.0.4" = self.buildNodePackage {
    name = "debug-1.0.4";
    version = "1.0.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/debug/-/debug-1.0.4.tgz";
      name = "debug-1.0.4.tgz";
      sha1 = "5b9c256bd54b6ec02283176fa8a0ede6d154cbf8";
    };
    deps = {
      "ms-0.6.2" = self.by-version."ms"."0.6.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."debug"."^2.0.0" =
    self.by-version."debug"."2.2.0";
  by-spec."debug"."^2.1.0" =
    self.by-version."debug"."2.2.0";
  by-spec."debug"."^2.1.1" =
    self.by-version."debug"."2.2.0";
  by-spec."debug"."^2.1.3" =
    self.by-version."debug"."2.2.0";
  by-spec."debug"."~0.7.0" =
    self.by-version."debug"."0.7.4";
  by-version."debug"."0.7.4" = self.buildNodePackage {
    name = "debug-0.7.4";
    version = "0.7.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/debug/-/debug-0.7.4.tgz";
      name = "debug-0.7.4.tgz";
      sha1 = "06e1ea8082c2cb14e39806e22e2f6f757f92af39";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."debug"."~0.8.1" =
    self.by-version."debug"."0.8.1";
  by-version."debug"."0.8.1" = self.buildNodePackage {
    name = "debug-0.8.1";
    version = "0.8.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/debug/-/debug-0.8.1.tgz";
      name = "debug-0.8.1.tgz";
      sha1 = "20ff4d26f5e422cb68a1bacbbb61039ad8c1c130";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."debug"."~1.0.1" =
    self.by-version."debug"."1.0.4";
  by-spec."debug"."~1.0.2" =
    self.by-version."debug"."1.0.4";
  by-spec."decompress-zip"."0.0.8" =
    self.by-version."decompress-zip"."0.0.8";
  by-version."decompress-zip"."0.0.8" = self.buildNodePackage {
    name = "decompress-zip-0.0.8";
    version = "0.0.8";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/decompress-zip/-/decompress-zip-0.0.8.tgz";
      name = "decompress-zip-0.0.8.tgz";
      sha1 = "4a265b22c7b209d7b24fa66f2b2dfbced59044f3";
    };
    deps = {
      "q-1.0.1" = self.by-version."q"."1.0.1";
      "mkpath-0.1.0" = self.by-version."mkpath"."0.1.0";
      "binary-0.3.0" = self.by-version."binary"."0.3.0";
      "touch-0.0.2" = self.by-version."touch"."0.0.2";
      "readable-stream-1.1.13" = self.by-version."readable-stream"."1.1.13";
      "nopt-2.2.1" = self.by-version."nopt"."2.2.1";
      "graceful-fs-3.0.8" = self.by-version."graceful-fs"."3.0.8";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."decompress-zip"."~0.0.6" =
    self.by-version."decompress-zip"."0.0.8";
  by-spec."deep-extend"."~0.2.5" =
    self.by-version."deep-extend"."0.2.11";
  by-version."deep-extend"."0.2.11" = self.buildNodePackage {
    name = "deep-extend-0.2.11";
    version = "0.2.11";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/deep-extend/-/deep-extend-0.2.11.tgz";
      name = "deep-extend-0.2.11.tgz";
      sha1 = "7a16ba69729132340506170494bc83f7076fe08f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."deflate-crc32-stream"."~0.1.0" =
    self.by-version."deflate-crc32-stream"."0.1.2";
  by-version."deflate-crc32-stream"."0.1.2" = self.buildNodePackage {
    name = "deflate-crc32-stream-0.1.2";
    version = "0.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/deflate-crc32-stream/-/deflate-crc32-stream-0.1.2.tgz";
      name = "deflate-crc32-stream-0.1.2.tgz";
      sha1 = "975ea0e7303b75d85232198ab7b405c2d47baad5";
    };
    deps = {
      "buffer-crc32-0.2.5" = self.by-version."buffer-crc32"."0.2.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."delayed-stream"."0.0.5" =
    self.by-version."delayed-stream"."0.0.5";
  by-version."delayed-stream"."0.0.5" = self.buildNodePackage {
    name = "delayed-stream-0.0.5";
    version = "0.0.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/delayed-stream/-/delayed-stream-0.0.5.tgz";
      name = "delayed-stream-0.0.5.tgz";
      sha1 = "d4b1f43a93e8296dfe02694f4680bc37a313c73f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."delayed-stream"."^1.0.0" =
    self.by-version."delayed-stream"."1.0.0";
  by-version."delayed-stream"."1.0.0" = self.buildNodePackage {
    name = "delayed-stream-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/delayed-stream/-/delayed-stream-1.0.0.tgz";
      name = "delayed-stream-1.0.0.tgz";
      sha1 = "df3ae199acadfb7d440aaae0b29e2272b24ec619";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."dezalgo"."^1.0.1" =
    self.by-version."dezalgo"."1.0.2";
  by-version."dezalgo"."1.0.2" = self.buildNodePackage {
    name = "dezalgo-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/dezalgo/-/dezalgo-1.0.2.tgz";
      name = "dezalgo-1.0.2.tgz";
      sha1 = "2bc8b5a1683131764a98def7e4aa22105a688a5a";
    };
    deps = {
      "asap-1.0.0" = self.by-version."asap"."1.0.0";
      "wrappy-1.0.1" = self.by-version."wrappy"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."dlna-js"."git+https://git.popcorntime.io/mirrors/dlna-js.git" =
    self.by-version."dlna-js"."0.0.1";
  by-version."dlna-js"."0.0.1" = self.buildNodePackage {
    name = "dlna-js-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchgit {
      url = "https://git.popcorntime.io/mirrors/dlna-js.git";
      rev = "8872ebfa98e1d62c0075a51c40b0c043f95db318";
      sha256 = "49f7279df591d24ca3757bdabff8443b947ef5a20b225d10b69c0fa5574e823b";
    };
    deps = {
      "xml2js-0.2.8" = self.by-version."xml2js"."0.2.8";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "dlna-js" = self.by-version."dlna-js"."0.0.1";
  by-spec."dom-serializer"."0" =
    self.by-version."dom-serializer"."0.1.0";
  by-version."dom-serializer"."0.1.0" = self.buildNodePackage {
    name = "dom-serializer-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/dom-serializer/-/dom-serializer-0.1.0.tgz";
      name = "dom-serializer-0.1.0.tgz";
      sha1 = "073c697546ce0780ce23be4a28e293e40bc30c82";
    };
    deps = {
      "domelementtype-1.1.3" = self.by-version."domelementtype"."1.1.3";
      "entities-1.1.1" = self.by-version."entities"."1.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."domelementtype"."1" =
    self.by-version."domelementtype"."1.3.0";
  by-version."domelementtype"."1.3.0" = self.buildNodePackage {
    name = "domelementtype-1.3.0";
    version = "1.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/domelementtype/-/domelementtype-1.3.0.tgz";
      name = "domelementtype-1.3.0.tgz";
      sha1 = "b17aed82e8ab59e52dd9c19b1756e0fc187204c2";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."domelementtype"."~1.1.1" =
    self.by-version."domelementtype"."1.1.3";
  by-version."domelementtype"."1.1.3" = self.buildNodePackage {
    name = "domelementtype-1.1.3";
    version = "1.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/domelementtype/-/domelementtype-1.1.3.tgz";
      name = "domelementtype-1.1.3.tgz";
      sha1 = "bd28773e2642881aec51544924299c5cd822185b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."domhandler"."2.3" =
    self.by-version."domhandler"."2.3.0";
  by-version."domhandler"."2.3.0" = self.buildNodePackage {
    name = "domhandler-2.3.0";
    version = "2.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/domhandler/-/domhandler-2.3.0.tgz";
      name = "domhandler-2.3.0.tgz";
      sha1 = "2de59a0822d5027fabff6f032c2b25a2a8abe738";
    };
    deps = {
      "domelementtype-1.3.0" = self.by-version."domelementtype"."1.3.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."domutils"."1.5" =
    self.by-version."domutils"."1.5.1";
  by-version."domutils"."1.5.1" = self.buildNodePackage {
    name = "domutils-1.5.1";
    version = "1.5.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/domutils/-/domutils-1.5.1.tgz";
      name = "domutils-1.5.1.tgz";
      sha1 = "dcd8488a26f563d61079e48c9f7b7e32373682cf";
    };
    deps = {
      "dom-serializer-0.1.0" = self.by-version."dom-serializer"."0.1.0";
      "domelementtype-1.3.0" = self.by-version."domelementtype"."1.3.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."dtrace-provider"."~0.4" =
    self.by-version."dtrace-provider"."0.4.0";
  by-version."dtrace-provider"."0.4.0" = self.buildNodePackage {
    name = "dtrace-provider-0.4.0";
    version = "0.4.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/dtrace-provider/-/dtrace-provider-0.4.0.tgz";
      name = "dtrace-provider-0.4.0.tgz";
      sha1 = "0b67bc1cc77e79bf88b87ad20664f4a753ce3f26";
    };
    deps = {
      "nan-1.5.3" = self.by-version."nan"."1.5.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."duplexify"."^3.2.0" =
    self.by-version."duplexify"."3.4.1";
  by-version."duplexify"."3.4.1" = self.buildNodePackage {
    name = "duplexify-3.4.1";
    version = "3.4.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/duplexify/-/duplexify-3.4.1.tgz";
      name = "duplexify-3.4.1.tgz";
      sha1 = "eb0e8a2040e27e2db9ff8d8d36d3a1b4427fc502";
    };
    deps = {
      "end-of-stream-1.0.0" = self.by-version."end-of-stream"."1.0.0";
      "readable-stream-1.1.13" = self.by-version."readable-stream"."1.1.13";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."elementtree"."^0.1.6" =
    self.by-version."elementtree"."0.1.6";
  by-version."elementtree"."0.1.6" = self.buildNodePackage {
    name = "elementtree-0.1.6";
    version = "0.1.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/elementtree/-/elementtree-0.1.6.tgz";
      name = "elementtree-0.1.6.tgz";
      sha1 = "2ac4c46ea30516c8c4cbdb5e3ac7418e592de20c";
    };
    deps = {
      "sax-0.3.5" = self.by-version."sax"."0.3.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."elementtree"."~0.1.6" =
    self.by-version."elementtree"."0.1.6";
  by-spec."end-of-stream"."1.0.0" =
    self.by-version."end-of-stream"."1.0.0";
  by-version."end-of-stream"."1.0.0" = self.buildNodePackage {
    name = "end-of-stream-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/end-of-stream/-/end-of-stream-1.0.0.tgz";
      name = "end-of-stream-1.0.0.tgz";
      sha1 = "d4596e702734a93e40e9af864319eabd99ff2f0e";
    };
    deps = {
      "once-1.3.2" = self.by-version."once"."1.3.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."end-of-stream"."^0.1.4" =
    self.by-version."end-of-stream"."0.1.5";
  by-version."end-of-stream"."0.1.5" = self.buildNodePackage {
    name = "end-of-stream-0.1.5";
    version = "0.1.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/end-of-stream/-/end-of-stream-0.1.5.tgz";
      name = "end-of-stream-0.1.5.tgz";
      sha1 = "8e177206c3c80837d85632e8b9359dfe8b2f6eaf";
    };
    deps = {
      "once-1.3.2" = self.by-version."once"."1.3.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."end-of-stream"."^1.0.0" =
    self.by-version."end-of-stream"."1.1.0";
  by-version."end-of-stream"."1.1.0" = self.buildNodePackage {
    name = "end-of-stream-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/end-of-stream/-/end-of-stream-1.1.0.tgz";
      name = "end-of-stream-1.1.0.tgz";
      sha1 = "e9353258baa9108965efc41cb0ef8ade2f3cfb07";
    };
    deps = {
      "once-1.3.2" = self.by-version."once"."1.3.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."end-of-stream"."~0.1.3" =
    self.by-version."end-of-stream"."0.1.5";
  by-spec."end-of-stream"."~1.0.0" =
    self.by-version."end-of-stream"."1.0.0";
  by-spec."entities"."1.0" =
    self.by-version."entities"."1.0.0";
  by-version."entities"."1.0.0" = self.buildNodePackage {
    name = "entities-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/entities/-/entities-1.0.0.tgz";
      name = "entities-1.0.0.tgz";
      sha1 = "b2987aa3821347fcde642b24fdfc9e4fb712bf26";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."entities"."~1.1.1" =
    self.by-version."entities"."1.1.1";
  by-version."entities"."1.1.1" = self.buildNodePackage {
    name = "entities-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/entities/-/entities-1.1.1.tgz";
      name = "entities-1.1.1.tgz";
      sha1 = "6e5c2d0a5621b5dadaecef80b90edfb5cd7772f0";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."es5-ext"."~0.10.2" =
    self.by-version."es5-ext"."0.10.7";
  by-version."es5-ext"."0.10.7" = self.buildNodePackage {
    name = "es5-ext-0.10.7";
    version = "0.10.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/es5-ext/-/es5-ext-0.10.7.tgz";
      name = "es5-ext-0.10.7.tgz";
      sha1 = "dfaea50721301042e2d89c1719d43493fa821656";
    };
    deps = {
      "es6-iterator-0.1.3" = self.by-version."es6-iterator"."0.1.3";
      "es6-symbol-2.0.1" = self.by-version."es6-symbol"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."es5-ext"."~0.10.4" =
    self.by-version."es5-ext"."0.10.7";
  by-spec."es5-ext"."~0.10.5" =
    self.by-version."es5-ext"."0.10.7";
  by-spec."es5-ext"."~0.10.6" =
    self.by-version."es5-ext"."0.10.7";
  by-spec."es5-ext"."~0.9.2" =
    self.by-version."es5-ext"."0.9.2";
  by-version."es5-ext"."0.9.2" = self.buildNodePackage {
    name = "es5-ext-0.9.2";
    version = "0.9.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/es5-ext/-/es5-ext-0.9.2.tgz";
      name = "es5-ext-0.9.2.tgz";
      sha1 = "d2e309d1f223b0718648835acf5b8823a8061f8a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."es5class"."2.x.x" =
    self.by-version."es5class"."2.3.1";
  by-version."es5class"."2.3.1" = self.buildNodePackage {
    name = "es5class-2.3.1";
    version = "2.3.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/es5class/-/es5class-2.3.1.tgz";
      name = "es5class-2.3.1.tgz";
      sha1 = "42c5c18a9016bcb0db28a4d340ebb831f55d1b66";
    };
    deps = {
      "better-curry-1.6.0" = self.by-version."better-curry"."1.6.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."es6-iterator"."~0.1.3" =
    self.by-version."es6-iterator"."0.1.3";
  by-version."es6-iterator"."0.1.3" = self.buildNodePackage {
    name = "es6-iterator-0.1.3";
    version = "0.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/es6-iterator/-/es6-iterator-0.1.3.tgz";
      name = "es6-iterator-0.1.3.tgz";
      sha1 = "d6f58b8c4fc413c249b4baa19768f8e4d7c8944e";
    };
    deps = {
      "d-0.1.1" = self.by-version."d"."0.1.1";
      "es5-ext-0.10.7" = self.by-version."es5-ext"."0.10.7";
      "es6-symbol-2.0.1" = self.by-version."es6-symbol"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."es6-symbol"."~2.0.1" =
    self.by-version."es6-symbol"."2.0.1";
  by-version."es6-symbol"."2.0.1" = self.buildNodePackage {
    name = "es6-symbol-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/es6-symbol/-/es6-symbol-2.0.1.tgz";
      name = "es6-symbol-2.0.1.tgz";
      sha1 = "761b5c67cfd4f1d18afb234f691d678682cb3bf3";
    };
    deps = {
      "d-0.1.1" = self.by-version."d"."0.1.1";
      "es5-ext-0.10.7" = self.by-version."es5-ext"."0.10.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."es6-weak-map"."~0.1.2" =
    self.by-version."es6-weak-map"."0.1.4";
  by-version."es6-weak-map"."0.1.4" = self.buildNodePackage {
    name = "es6-weak-map-0.1.4";
    version = "0.1.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/es6-weak-map/-/es6-weak-map-0.1.4.tgz";
      name = "es6-weak-map-0.1.4.tgz";
      sha1 = "706cef9e99aa236ba7766c239c8b9e286ea7d228";
    };
    deps = {
      "d-0.1.1" = self.by-version."d"."0.1.1";
      "es5-ext-0.10.7" = self.by-version."es5-ext"."0.10.7";
      "es6-iterator-0.1.3" = self.by-version."es6-iterator"."0.1.3";
      "es6-symbol-2.0.1" = self.by-version."es6-symbol"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."escape-string-regexp"."^1.0.0" =
    self.by-version."escape-string-regexp"."1.0.3";
  by-version."escape-string-regexp"."1.0.3" = self.buildNodePackage {
    name = "escape-string-regexp-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/escape-string-regexp/-/escape-string-regexp-1.0.3.tgz";
      name = "escape-string-regexp-1.0.3.tgz";
      sha1 = "9e2d8b25bc2555c3336723750e03f099c2735bb5";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."escape-string-regexp"."^1.0.2" =
    self.by-version."escape-string-regexp"."1.0.3";
  by-spec."esprima"."~ 1.0.2" =
    self.by-version."esprima"."1.0.4";
  by-version."esprima"."1.0.4" = self.buildNodePackage {
    name = "esprima-1.0.4";
    version = "1.0.4";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/esprima/-/esprima-1.0.4.tgz";
      name = "esprima-1.0.4.tgz";
      sha1 = "9f557e08fc3b4d26ece9dd34f8fbf476b62585ad";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."esprima"."~1.0.4" =
    self.by-version."esprima"."1.0.4";
  by-spec."esprima"."~2.2.0" =
    self.by-version."esprima"."2.2.0";
  by-version."esprima"."2.2.0" = self.buildNodePackage {
    name = "esprima-2.2.0";
    version = "2.2.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/esprima/-/esprima-2.2.0.tgz";
      name = "esprima-2.2.0.tgz";
      sha1 = "4292c1d68e4173d815fa2290dc7afc96d81fcd83";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."event-emitter"."~0.2.2" =
    self.by-version."event-emitter"."0.2.2";
  by-version."event-emitter"."0.2.2" = self.buildNodePackage {
    name = "event-emitter-0.2.2";
    version = "0.2.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/event-emitter/-/event-emitter-0.2.2.tgz";
      name = "event-emitter-0.2.2.tgz";
      sha1 = "c81e3724eb55407c5a0d5ee3299411f700f54291";
    };
    deps = {
      "es5-ext-0.9.2" = self.by-version."es5-ext"."0.9.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."event-emitter"."~0.3.1" =
    self.by-version."event-emitter"."0.3.3";
  by-version."event-emitter"."0.3.3" = self.buildNodePackage {
    name = "event-emitter-0.3.3";
    version = "0.3.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/event-emitter/-/event-emitter-0.3.3.tgz";
      name = "event-emitter-0.3.3.tgz";
      sha1 = "df8e806541c68ab8ff20a79a1841b91abaa1bee4";
    };
    deps = {
      "es5-ext-0.10.7" = self.by-version."es5-ext"."0.10.7";
      "d-0.1.1" = self.by-version."d"."0.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."eventemitter2"."~0.4.13" =
    self.by-version."eventemitter2"."0.4.14";
  by-version."eventemitter2"."0.4.14" = self.buildNodePackage {
    name = "eventemitter2-0.4.14";
    version = "0.4.14";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/eventemitter2/-/eventemitter2-0.4.14.tgz";
      name = "eventemitter2-0.4.14.tgz";
      sha1 = "8f61b75cde012b2e9eb284d4545583b5643b61ab";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."eventemitter3"."*" =
    self.by-version."eventemitter3"."1.1.0";
  by-version."eventemitter3"."1.1.0" = self.buildNodePackage {
    name = "eventemitter3-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/eventemitter3/-/eventemitter3-1.1.0.tgz";
      name = "eventemitter3-1.1.0.tgz";
      sha1 = "8d94b51448fa4ae11f8725aeebb7c0c48a8e71ac";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."exit"."0.1.2" =
    self.by-version."exit"."0.1.2";
  by-version."exit"."0.1.2" = self.buildNodePackage {
    name = "exit-0.1.2";
    version = "0.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/exit/-/exit-0.1.2.tgz";
      name = "exit-0.1.2.tgz";
      sha1 = "0632638f8d877cc82107d30a0fff1a17cba1cd0c";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."exit"."0.1.x" =
    self.by-version."exit"."0.1.2";
  by-spec."exit"."~0.1.1" =
    self.by-version."exit"."0.1.2";
  by-spec."extend.js"."0.0.2" =
    self.by-version."extend.js"."0.0.2";
  by-version."extend.js"."0.0.2" = self.buildNodePackage {
    name = "extend.js-0.0.2";
    version = "0.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/extend.js/-/extend.js-0.0.2.tgz";
      name = "extend.js-0.0.2.tgz";
      sha1 = "0f9c7a81a1f208b703eb0c3131fe5716ac6ecd15";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."extsprintf"."1.2.0" =
    self.by-version."extsprintf"."1.2.0";
  by-version."extsprintf"."1.2.0" = self.buildNodePackage {
    name = "extsprintf-1.2.0";
    version = "1.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/extsprintf/-/extsprintf-1.2.0.tgz";
      name = "extsprintf-1.2.0.tgz";
      sha1 = "5ad946c22f5b32ba7f8cd7426711c6e8a3fc2529";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."faye-websocket"."*" =
    self.by-version."faye-websocket"."0.9.4";
  by-version."faye-websocket"."0.9.4" = self.buildNodePackage {
    name = "faye-websocket-0.9.4";
    version = "0.9.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/faye-websocket/-/faye-websocket-0.9.4.tgz";
      name = "faye-websocket-0.9.4.tgz";
      sha1 = "885934c79effb0409549e0c0a3801ed17a40cdad";
    };
    deps = {
      "websocket-driver-0.5.4" = self.by-version."websocket-driver"."0.5.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."faye-websocket"."~0.4.3" =
    self.by-version."faye-websocket"."0.4.4";
  by-version."faye-websocket"."0.4.4" = self.buildNodePackage {
    name = "faye-websocket-0.4.4";
    version = "0.4.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/faye-websocket/-/faye-websocket-0.4.4.tgz";
      name = "faye-websocket-0.4.4.tgz";
      sha1 = "c14c5b3bf14d7417ffbfd990c0a7495cd9f337bc";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."fifo"."^0.1.4" =
    self.by-version."fifo"."0.1.4";
  by-version."fifo"."0.1.4" = self.buildNodePackage {
    name = "fifo-0.1.4";
    version = "0.1.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/fifo/-/fifo-0.1.4.tgz";
      name = "fifo-0.1.4.tgz";
      sha1 = "bf42d87c0ad07b00d0949d12388f6289606ece34";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."figures"."^1.3.2" =
    self.by-version."figures"."1.3.5";
  by-version."figures"."1.3.5" = self.buildNodePackage {
    name = "figures-1.3.5";
    version = "1.3.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/figures/-/figures-1.3.5.tgz";
      name = "figures-1.3.5.tgz";
      sha1 = "d1a31f4e1d2c2938ecde5c06aa16134cf29f4771";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."figures"."^1.3.5" =
    self.by-version."figures"."1.3.5";
  by-spec."file-utils"."~0.1.5" =
    self.by-version."file-utils"."0.1.5";
  by-version."file-utils"."0.1.5" = self.buildNodePackage {
    name = "file-utils-0.1.5";
    version = "0.1.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/file-utils/-/file-utils-0.1.5.tgz";
      name = "file-utils-0.1.5.tgz";
      sha1 = "dc8153c855387cb4dacb0a1725531fa444a6b48c";
    };
    deps = {
      "lodash-2.1.0" = self.by-version."lodash"."2.1.0";
      "iconv-lite-0.2.11" = self.by-version."iconv-lite"."0.2.11";
      "rimraf-2.2.8" = self.by-version."rimraf"."2.2.8";
      "glob-3.2.11" = self.by-version."glob"."3.2.11";
      "minimatch-0.2.14" = self.by-version."minimatch"."0.2.14";
      "findup-sync-0.1.3" = self.by-version."findup-sync"."0.1.3";
      "isbinaryfile-0.1.9" = self.by-version."isbinaryfile"."0.1.9";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."findup-sync"."^0.1.2" =
    self.by-version."findup-sync"."0.1.3";
  by-version."findup-sync"."0.1.3" = self.buildNodePackage {
    name = "findup-sync-0.1.3";
    version = "0.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/findup-sync/-/findup-sync-0.1.3.tgz";
      name = "findup-sync-0.1.3.tgz";
      sha1 = "7f3e7a97b82392c653bf06589bd85190e93c3683";
    };
    deps = {
      "glob-3.2.11" = self.by-version."glob"."3.2.11";
      "lodash-2.4.2" = self.by-version."lodash"."2.4.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."findup-sync"."~0.1.2" =
    self.by-version."findup-sync"."0.1.3";
  by-spec."flatten"."0.0.1" =
    self.by-version."flatten"."0.0.1";
  by-version."flatten"."0.0.1" = self.buildNodePackage {
    name = "flatten-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/flatten/-/flatten-0.0.1.tgz";
      name = "flatten-0.0.1.tgz";
      sha1 = "554440766da0a0d603999f433453f6c2fc6a75c1";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."forever-agent"."~0.2.0" =
    self.by-version."forever-agent"."0.2.0";
  by-version."forever-agent"."0.2.0" = self.buildNodePackage {
    name = "forever-agent-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/forever-agent/-/forever-agent-0.2.0.tgz";
      name = "forever-agent-0.2.0.tgz";
      sha1 = "e1c25c7ad44e09c38f233876c76fcc24ff843b1f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."forever-agent"."~0.5.0" =
    self.by-version."forever-agent"."0.5.2";
  by-version."forever-agent"."0.5.2" = self.buildNodePackage {
    name = "forever-agent-0.5.2";
    version = "0.5.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/forever-agent/-/forever-agent-0.5.2.tgz";
      name = "forever-agent-0.5.2.tgz";
      sha1 = "6d0e09c4921f94a27f63d3b49c5feff1ea4c5130";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."forever-agent"."~0.6.0" =
    self.by-version."forever-agent"."0.6.1";
  by-version."forever-agent"."0.6.1" = self.buildNodePackage {
    name = "forever-agent-0.6.1";
    version = "0.6.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/forever-agent/-/forever-agent-0.6.1.tgz";
      name = "forever-agent-0.6.1.tgz";
      sha1 = "fbc71f0c41adeb37f96c577ad1ed42d8fdacca91";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."form-data"."~0.0.3" =
    self.by-version."form-data"."0.0.10";
  by-version."form-data"."0.0.10" = self.buildNodePackage {
    name = "form-data-0.0.10";
    version = "0.0.10";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/form-data/-/form-data-0.0.10.tgz";
      name = "form-data-0.0.10.tgz";
      sha1 = "db345a5378d86aeeb1ed5d553b869ac192d2f5ed";
    };
    deps = {
      "combined-stream-0.0.7" = self.by-version."combined-stream"."0.0.7";
      "mime-1.2.11" = self.by-version."mime"."1.2.11";
      "async-0.2.10" = self.by-version."async"."0.2.10";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."form-data"."~0.1.0" =
    self.by-version."form-data"."0.1.4";
  by-version."form-data"."0.1.4" = self.buildNodePackage {
    name = "form-data-0.1.4";
    version = "0.1.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/form-data/-/form-data-0.1.4.tgz";
      name = "form-data-0.1.4.tgz";
      sha1 = "91abd788aba9702b1aabfa8bc01031a2ac9e3b12";
    };
    deps = {
      "combined-stream-0.0.7" = self.by-version."combined-stream"."0.0.7";
      "mime-1.2.11" = self.by-version."mime"."1.2.11";
      "async-0.9.2" = self.by-version."async"."0.9.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."form-data"."~0.2.0" =
    self.by-version."form-data"."0.2.0";
  by-version."form-data"."0.2.0" = self.buildNodePackage {
    name = "form-data-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/form-data/-/form-data-0.2.0.tgz";
      name = "form-data-0.2.0.tgz";
      sha1 = "26f8bc26da6440e299cbdcfb69035c4f77a6e466";
    };
    deps = {
      "async-0.9.2" = self.by-version."async"."0.9.2";
      "combined-stream-0.0.7" = self.by-version."combined-stream"."0.0.7";
      "mime-types-2.0.14" = self.by-version."mime-types"."2.0.14";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."fstream"."0" =
    self.by-version."fstream"."0.1.31";
  by-version."fstream"."0.1.31" = self.buildNodePackage {
    name = "fstream-0.1.31";
    version = "0.1.31";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/fstream/-/fstream-0.1.31.tgz";
      name = "fstream-0.1.31.tgz";
      sha1 = "7337f058fbbbbefa8c9f561a28cab0849202c988";
    };
    deps = {
      "graceful-fs-3.0.8" = self.by-version."graceful-fs"."3.0.8";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "rimraf-2.4.0" = self.by-version."rimraf"."2.4.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."fstream".">= 0.1.30 < 1" =
    self.by-version."fstream"."0.1.31";
  by-spec."fstream"."^1.0.0" =
    self.by-version."fstream"."1.0.6";
  by-version."fstream"."1.0.6" = self.buildNodePackage {
    name = "fstream-1.0.6";
    version = "1.0.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/fstream/-/fstream-1.0.6.tgz";
      name = "fstream-1.0.6.tgz";
      sha1 = "817e50312fb4ed90da865c8eb5ecd1d1d7aed0ec";
    };
    deps = {
      "graceful-fs-3.0.8" = self.by-version."graceful-fs"."3.0.8";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "rimraf-2.4.0" = self.by-version."rimraf"."2.4.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."fstream"."^1.0.2" =
    self.by-version."fstream"."1.0.6";
  by-spec."fstream"."~0.1.17" =
    self.by-version."fstream"."0.1.31";
  by-spec."fstream"."~0.1.22" =
    self.by-version."fstream"."0.1.31";
  by-spec."fstream"."~0.1.28" =
    self.by-version."fstream"."0.1.31";
  by-spec."fstream"."~1.0.2" =
    self.by-version."fstream"."1.0.6";
  by-spec."fstream-ignore"."0.0.7" =
    self.by-version."fstream-ignore"."0.0.7";
  by-version."fstream-ignore"."0.0.7" = self.buildNodePackage {
    name = "fstream-ignore-0.0.7";
    version = "0.0.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/fstream-ignore/-/fstream-ignore-0.0.7.tgz";
      name = "fstream-ignore-0.0.7.tgz";
      sha1 = "eea3033f0c3728139de7b57ab1b0d6d89c353c63";
    };
    deps = {
      "minimatch-0.2.14" = self.by-version."minimatch"."0.2.14";
      "fstream-0.1.31" = self.by-version."fstream"."0.1.31";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."fstream-ignore"."~0.0.6" =
    self.by-version."fstream-ignore"."0.0.10";
  by-version."fstream-ignore"."0.0.10" = self.buildNodePackage {
    name = "fstream-ignore-0.0.10";
    version = "0.0.10";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/fstream-ignore/-/fstream-ignore-0.0.10.tgz";
      name = "fstream-ignore-0.0.10.tgz";
      sha1 = "b10f8f522cc55415f80b41f7d3a32e6cba254e8c";
    };
    deps = {
      "fstream-0.1.31" = self.by-version."fstream"."0.1.31";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "minimatch-0.3.0" = self.by-version."minimatch"."0.3.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."fstream-ignore"."~1.0.1" =
    self.by-version."fstream-ignore"."1.0.2";
  by-version."fstream-ignore"."1.0.2" = self.buildNodePackage {
    name = "fstream-ignore-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/fstream-ignore/-/fstream-ignore-1.0.2.tgz";
      name = "fstream-ignore-1.0.2.tgz";
      sha1 = "18c891db01b782a74a7bff936a0f24997741c7ab";
    };
    deps = {
      "fstream-1.0.6" = self.by-version."fstream"."1.0.6";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "minimatch-2.0.8" = self.by-version."minimatch"."2.0.8";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."gaze"."~0.5.1" =
    self.by-version."gaze"."0.5.1";
  by-version."gaze"."0.5.1" = self.buildNodePackage {
    name = "gaze-0.5.1";
    version = "0.5.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/gaze/-/gaze-0.5.1.tgz";
      name = "gaze-0.5.1.tgz";
      sha1 = "22e731078ef3e49d1c4ab1115ac091192051824c";
    };
    deps = {
      "globule-0.1.0" = self.by-version."globule"."0.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."generate-function"."^2.0.0" =
    self.by-version."generate-function"."2.0.0";
  by-version."generate-function"."2.0.0" = self.buildNodePackage {
    name = "generate-function-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/generate-function/-/generate-function-2.0.0.tgz";
      name = "generate-function-2.0.0.tgz";
      sha1 = "6858fe7c0969b7d4e9093337647ac79f60dfbe74";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."generate-object-property"."^1.1.0" =
    self.by-version."generate-object-property"."1.2.0";
  by-version."generate-object-property"."1.2.0" = self.buildNodePackage {
    name = "generate-object-property-1.2.0";
    version = "1.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/generate-object-property/-/generate-object-property-1.2.0.tgz";
      name = "generate-object-property-1.2.0.tgz";
      sha1 = "9c0e1c40308ce804f4783618b937fa88f99d50d0";
    };
    deps = {
      "is-property-1.0.2" = self.by-version."is-property"."1.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."get-stdin"."^4.0.1" =
    self.by-version."get-stdin"."4.0.1";
  by-version."get-stdin"."4.0.1" = self.buildNodePackage {
    name = "get-stdin-4.0.1";
    version = "4.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/get-stdin/-/get-stdin-4.0.1.tgz";
      name = "get-stdin-4.0.1.tgz";
      sha1 = "b968c6b0a04384324902e8bf1a5df32579a450fe";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."getobject"."~0.1.0" =
    self.by-version."getobject"."0.1.0";
  by-version."getobject"."0.1.0" = self.buildNodePackage {
    name = "getobject-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/getobject/-/getobject-0.1.0.tgz";
      name = "getobject-0.1.0.tgz";
      sha1 = "047a449789fa160d018f5486ed91320b6ec7885c";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."glob"."3" =
    self.by-version."glob"."3.2.11";
  by-version."glob"."3.2.11" = self.buildNodePackage {
    name = "glob-3.2.11";
    version = "3.2.11";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/glob/-/glob-3.2.11.tgz";
      name = "glob-3.2.11.tgz";
      sha1 = "4a973f635b9190f715d10987d5c00fd2815ebe3d";
    };
    deps = {
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "minimatch-0.3.0" = self.by-version."minimatch"."0.3.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."glob"."3.2.x" =
    self.by-version."glob"."3.2.11";
  by-spec."glob"."^4.4.2" =
    self.by-version."glob"."4.5.3";
  by-version."glob"."4.5.3" = self.buildNodePackage {
    name = "glob-4.5.3";
    version = "4.5.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/glob/-/glob-4.5.3.tgz";
      name = "glob-4.5.3.tgz";
      sha1 = "c6cb73d3226c1efef04de3c56d012f03377ee15f";
    };
    deps = {
      "inflight-1.0.4" = self.by-version."inflight"."1.0.4";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "minimatch-2.0.8" = self.by-version."minimatch"."2.0.8";
      "once-1.3.2" = self.by-version."once"."1.3.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."glob"."~ 3.2.1" =
    self.by-version."glob"."3.2.11";
  by-spec."glob"."~3.1.21" =
    self.by-version."glob"."3.1.21";
  by-version."glob"."3.1.21" = self.buildNodePackage {
    name = "glob-3.1.21";
    version = "3.1.21";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/glob/-/glob-3.1.21.tgz";
      name = "glob-3.1.21.tgz";
      sha1 = "d29e0a055dea5138f4d07ed40e8982e83c2066cd";
    };
    deps = {
      "minimatch-0.2.14" = self.by-version."minimatch"."0.2.14";
      "graceful-fs-1.2.3" = self.by-version."graceful-fs"."1.2.3";
      "inherits-1.0.0" = self.by-version."inherits"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."glob"."~3.2.6" =
    self.by-version."glob"."3.2.11";
  by-spec."glob"."~3.2.9" =
    self.by-version."glob"."3.2.11";
  by-spec."glob"."~4.0.2" =
    self.by-version."glob"."4.0.6";
  by-version."glob"."4.0.6" = self.buildNodePackage {
    name = "glob-4.0.6";
    version = "4.0.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/glob/-/glob-4.0.6.tgz";
      name = "glob-4.0.6.tgz";
      sha1 = "695c50bdd4e2fb5c5d370b091f388d3707e291a7";
    };
    deps = {
      "graceful-fs-3.0.8" = self.by-version."graceful-fs"."3.0.8";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "minimatch-1.0.0" = self.by-version."minimatch"."1.0.0";
      "once-1.3.2" = self.by-version."once"."1.3.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."globule"."~0.1.0" =
    self.by-version."globule"."0.1.0";
  by-version."globule"."0.1.0" = self.buildNodePackage {
    name = "globule-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/globule/-/globule-0.1.0.tgz";
      name = "globule-0.1.0.tgz";
      sha1 = "d9c8edde1da79d125a151b79533b978676346ae5";
    };
    deps = {
      "lodash-1.0.2" = self.by-version."lodash"."1.0.2";
      "glob-3.1.21" = self.by-version."glob"."3.1.21";
      "minimatch-0.2.14" = self.by-version."minimatch"."0.2.14";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."got"."^0.3.0" =
    self.by-version."got"."0.3.0";
  by-version."got"."0.3.0" = self.buildNodePackage {
    name = "got-0.3.0";
    version = "0.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/got/-/got-0.3.0.tgz";
      name = "got-0.3.0.tgz";
      sha1 = "888ec66ca4bc735ab089dbe959496d0f79485493";
    };
    deps = {
      "object-assign-0.3.1" = self.by-version."object-assign"."0.3.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."got"."^3.2.0" =
    self.by-version."got"."3.2.0";
  by-version."got"."3.2.0" = self.buildNodePackage {
    name = "got-3.2.0";
    version = "3.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/got/-/got-3.2.0.tgz";
      name = "got-3.2.0.tgz";
      sha1 = "3182273b695da605c50003dc2d708217cf8156e9";
    };
    deps = {
      "duplexify-3.4.1" = self.by-version."duplexify"."3.4.1";
      "infinity-agent-2.0.3" = self.by-version."infinity-agent"."2.0.3";
      "is-stream-1.0.1" = self.by-version."is-stream"."1.0.1";
      "lowercase-keys-1.0.0" = self.by-version."lowercase-keys"."1.0.0";
      "nested-error-stacks-1.0.0" = self.by-version."nested-error-stacks"."1.0.0";
      "object-assign-2.1.1" = self.by-version."object-assign"."2.1.1";
      "prepend-http-1.0.1" = self.by-version."prepend-http"."1.0.1";
      "read-all-stream-2.1.2" = self.by-version."read-all-stream"."2.1.2";
      "statuses-1.2.1" = self.by-version."statuses"."1.2.1";
      "timed-out-2.0.0" = self.by-version."timed-out"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."graceful-fs"."2" =
    self.by-version."graceful-fs"."2.0.3";
  by-version."graceful-fs"."2.0.3" = self.buildNodePackage {
    name = "graceful-fs-2.0.3";
    version = "2.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/graceful-fs/-/graceful-fs-2.0.3.tgz";
      name = "graceful-fs-2.0.3.tgz";
      sha1 = "7cd2cdb228a4a3f36e95efa6cc142de7d1a136d0";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."graceful-fs"."3" =
    self.by-version."graceful-fs"."3.0.8";
  by-version."graceful-fs"."3.0.8" = self.buildNodePackage {
    name = "graceful-fs-3.0.8";
    version = "3.0.8";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/graceful-fs/-/graceful-fs-3.0.8.tgz";
      name = "graceful-fs-3.0.8.tgz";
      sha1 = "ce813e725fa82f7e6147d51c9a5ca68270551c22";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."graceful-fs"."^3.0.1" =
    self.by-version."graceful-fs"."3.0.8";
  by-spec."graceful-fs"."^3.0.2" =
    self.by-version."graceful-fs"."3.0.8";
  by-spec."graceful-fs"."~1.2.0" =
    self.by-version."graceful-fs"."1.2.3";
  by-version."graceful-fs"."1.2.3" = self.buildNodePackage {
    name = "graceful-fs-1.2.3";
    version = "1.2.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/graceful-fs/-/graceful-fs-1.2.3.tgz";
      name = "graceful-fs-1.2.3.tgz";
      sha1 = "15a4806a57547cb2d2dbf27f42e89a8c3451b364";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."graceful-fs"."~2.0.0" =
    self.by-version."graceful-fs"."2.0.3";
  by-spec."graceful-fs"."~2.0.1" =
    self.by-version."graceful-fs"."2.0.3";
  by-spec."graceful-fs"."~3.0.0" =
    self.by-version."graceful-fs"."3.0.8";
  by-spec."graceful-fs"."~3.0.1" =
    self.by-version."graceful-fs"."3.0.8";
  by-spec."graceful-fs"."~3.0.2" =
    self.by-version."graceful-fs"."3.0.8";
  by-spec."graceful-readlink".">= 1.0.0" =
    self.by-version."graceful-readlink"."1.0.1";
  by-version."graceful-readlink"."1.0.1" = self.buildNodePackage {
    name = "graceful-readlink-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/graceful-readlink/-/graceful-readlink-1.0.1.tgz";
      name = "graceful-readlink-1.0.1.tgz";
      sha1 = "4cafad76bc62f02fa039b2f94e9a3dd3a391a725";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."grunt"."0.4.5" =
    self.by-version."grunt"."0.4.5";
  by-version."grunt"."0.4.5" = self.buildNodePackage {
    name = "grunt-0.4.5";
    version = "0.4.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/grunt/-/grunt-0.4.5.tgz";
      name = "grunt-0.4.5.tgz";
      sha1 = "56937cd5194324adff6d207631832a9d6ba4e7f0";
    };
    deps = {
      "async-0.1.22" = self.by-version."async"."0.1.22";
      "coffee-script-1.3.3" = self.by-version."coffee-script"."1.3.3";
      "colors-0.6.2" = self.by-version."colors"."0.6.2";
      "dateformat-1.0.2-1.2.3" = self.by-version."dateformat"."1.0.2-1.2.3";
      "eventemitter2-0.4.14" = self.by-version."eventemitter2"."0.4.14";
      "findup-sync-0.1.3" = self.by-version."findup-sync"."0.1.3";
      "glob-3.1.21" = self.by-version."glob"."3.1.21";
      "hooker-0.2.3" = self.by-version."hooker"."0.2.3";
      "iconv-lite-0.2.11" = self.by-version."iconv-lite"."0.2.11";
      "minimatch-0.2.14" = self.by-version."minimatch"."0.2.14";
      "nopt-1.0.10" = self.by-version."nopt"."1.0.10";
      "rimraf-2.2.8" = self.by-version."rimraf"."2.2.8";
      "lodash-0.9.2" = self.by-version."lodash"."0.9.2";
      "underscore.string-2.2.1" = self.by-version."underscore.string"."2.2.1";
      "which-1.0.9" = self.by-version."which"."1.0.9";
      "js-yaml-2.0.5" = self.by-version."js-yaml"."2.0.5";
      "exit-0.1.2" = self.by-version."exit"."0.1.2";
      "getobject-0.1.0" = self.by-version."getobject"."0.1.0";
      "grunt-legacy-util-0.2.0" = self.by-version."grunt-legacy-util"."0.2.0";
      "grunt-legacy-log-0.1.2" = self.by-version."grunt-legacy-log"."0.1.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "grunt" = self.by-version."grunt"."0.4.5";
  by-spec."grunt".">=0.4.1" =
    self.by-version."grunt"."0.4.5";
  by-spec."grunt"."~0.4" =
    self.by-version."grunt"."0.4.5";
  by-spec."grunt"."~0.4.0" =
    self.by-version."grunt"."0.4.5";
  by-spec."grunt"."~0.4.1" =
    self.by-version."grunt"."0.4.5";
  by-spec."grunt"."~0.4.2" =
    self.by-version."grunt"."0.4.5";
  by-spec."grunt-bower-clean"."^0.2.1" =
    self.by-version."grunt-bower-clean"."0.2.2";
  by-version."grunt-bower-clean"."0.2.2" = self.buildNodePackage {
    name = "grunt-bower-clean-0.2.2";
    version = "0.2.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/grunt-bower-clean/-/grunt-bower-clean-0.2.2.tgz";
      name = "grunt-bower-clean-0.2.2.tgz";
      sha1 = "aa5e7f87c227f7309e7a3fa22a9d38d3aae79d1d";
    };
    deps = {
      "bower-1.3.12" = self.by-version."bower"."1.3.12";
      "lodash-1.3.1" = self.by-version."lodash"."1.3.1";
      "q-0.9.7" = self.by-version."q"."0.9.7";
      "rimraf-2.2.8" = self.by-version."rimraf"."2.2.8";
      "fstream-ignore-0.0.7" = self.by-version."fstream-ignore"."0.0.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."grunt"."0.4.5"];
    os = [ ];
    cpu = [ ];
  };
  "grunt-bower-clean" = self.by-version."grunt-bower-clean"."0.2.2";
  by-spec."grunt-contrib-clean"."^0.5.0" =
    self.by-version."grunt-contrib-clean"."0.5.0";
  by-version."grunt-contrib-clean"."0.5.0" = self.buildNodePackage {
    name = "grunt-contrib-clean-0.5.0";
    version = "0.5.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/grunt-contrib-clean/-/grunt-contrib-clean-0.5.0.tgz";
      name = "grunt-contrib-clean-0.5.0.tgz";
      sha1 = "f53dfdee0849b1c7b40e9ebbba69f48c4c6079c5";
    };
    deps = {
      "rimraf-2.2.8" = self.by-version."rimraf"."2.2.8";
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."grunt"."0.4.5"];
    os = [ ];
    cpu = [ ];
  };
  "grunt-contrib-clean" = self.by-version."grunt-contrib-clean"."0.5.0";
  by-spec."grunt-contrib-compress"."^0.9.1" =
    self.by-version."grunt-contrib-compress"."0.9.1";
  by-version."grunt-contrib-compress"."0.9.1" = self.buildNodePackage {
    name = "grunt-contrib-compress-0.9.1";
    version = "0.9.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/grunt-contrib-compress/-/grunt-contrib-compress-0.9.1.tgz";
      name = "grunt-contrib-compress-0.9.1.tgz";
      sha1 = "9e962a8108c5bf86970ef4e406726ad9e6b1882d";
    };
    deps = {
      "archiver-0.9.1" = self.by-version."archiver"."0.9.1";
      "prettysize-0.0.3" = self.by-version."prettysize"."0.0.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."grunt"."0.4.5"];
    os = [ ];
    cpu = [ ];
  };
  "grunt-contrib-compress" = self.by-version."grunt-contrib-compress"."0.9.1";
  by-spec."grunt-contrib-jshint"."^0.10.0" =
    self.by-version."grunt-contrib-jshint"."0.10.0";
  by-version."grunt-contrib-jshint"."0.10.0" = self.buildNodePackage {
    name = "grunt-contrib-jshint-0.10.0";
    version = "0.10.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/grunt-contrib-jshint/-/grunt-contrib-jshint-0.10.0.tgz";
      name = "grunt-contrib-jshint-0.10.0.tgz";
      sha1 = "57ebccca87e8f327af6645d8a3c586d4845e4d81";
    };
    deps = {
      "jshint-2.5.11" = self.by-version."jshint"."2.5.11";
      "hooker-0.2.3" = self.by-version."hooker"."0.2.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."grunt"."0.4.5"];
    os = [ ];
    cpu = [ ];
  };
  "grunt-contrib-jshint" = self.by-version."grunt-contrib-jshint"."0.10.0";
  by-spec."grunt-contrib-stylus"."0.16.0" =
    self.by-version."grunt-contrib-stylus"."0.16.0";
  by-version."grunt-contrib-stylus"."0.16.0" = self.buildNodePackage {
    name = "grunt-contrib-stylus-0.16.0";
    version = "0.16.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/grunt-contrib-stylus/-/grunt-contrib-stylus-0.16.0.tgz";
      name = "grunt-contrib-stylus-0.16.0.tgz";
      sha1 = "232f7276e77e2cf27d749c81b46d603369d99e2d";
    };
    deps = {
      "stylus-0.45.1" = self.by-version."stylus"."0.45.1";
      "nib-1.0.4" = self.by-version."nib"."1.0.4";
      "chalk-0.4.0" = self.by-version."chalk"."0.4.0";
      "async-0.8.0" = self.by-version."async"."0.8.0";
      "lodash-2.4.2" = self.by-version."lodash"."2.4.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."grunt"."0.4.5"];
    os = [ ];
    cpu = [ ];
  };
  "grunt-contrib-stylus" = self.by-version."grunt-contrib-stylus"."0.16.0";
  by-spec."grunt-contrib-watch"."0.6.x" =
    self.by-version."grunt-contrib-watch"."0.6.1";
  by-version."grunt-contrib-watch"."0.6.1" = self.buildNodePackage {
    name = "grunt-contrib-watch-0.6.1";
    version = "0.6.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/grunt-contrib-watch/-/grunt-contrib-watch-0.6.1.tgz";
      name = "grunt-contrib-watch-0.6.1.tgz";
      sha1 = "64fdcba25a635f5b4da1b6ce6f90da0aeb6e3f15";
    };
    deps = {
      "gaze-0.5.1" = self.by-version."gaze"."0.5.1";
      "tiny-lr-fork-0.0.5" = self.by-version."tiny-lr-fork"."0.0.5";
      "lodash-2.4.2" = self.by-version."lodash"."2.4.2";
      "async-0.2.10" = self.by-version."async"."0.2.10";
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."grunt"."0.4.5"];
    os = [ ];
    cpu = [ ];
  };
  "grunt-contrib-watch" = self.by-version."grunt-contrib-watch"."0.6.1";
  by-spec."grunt-exec"."0.4.x" =
    self.by-version."grunt-exec"."0.4.6";
  by-version."grunt-exec"."0.4.6" = self.buildNodePackage {
    name = "grunt-exec-0.4.6";
    version = "0.4.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/grunt-exec/-/grunt-exec-0.4.6.tgz";
      name = "grunt-exec-0.4.6.tgz";
      sha1 = "28904a5d5bd2fa0ab65c6b94d23c5b180ab99d23";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."grunt"."0.4.5"];
    os = [ ];
    cpu = [ ];
  };
  "grunt-exec" = self.by-version."grunt-exec"."0.4.6";
  by-spec."grunt-githooks"."^0.3.1" =
    self.by-version."grunt-githooks"."0.3.1";
  by-version."grunt-githooks"."0.3.1" = self.buildNodePackage {
    name = "grunt-githooks-0.3.1";
    version = "0.3.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/grunt-githooks/-/grunt-githooks-0.3.1.tgz";
      name = "grunt-githooks-0.3.1.tgz";
      sha1 = "08103fe99eecb507d95b55329e583f24aba85b7f";
    };
    deps = {
      "handlebars-1.0.12" = self.by-version."handlebars"."1.0.12";
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."grunt"."0.4.5"];
    os = [ ];
    cpu = [ ];
  };
  "grunt-githooks" = self.by-version."grunt-githooks"."0.3.1";
  by-spec."grunt-jsbeautifier"."*" =
    self.by-version."grunt-jsbeautifier"."0.2.10";
  by-version."grunt-jsbeautifier"."0.2.10" = self.buildNodePackage {
    name = "grunt-jsbeautifier-0.2.10";
    version = "0.2.10";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/grunt-jsbeautifier/-/grunt-jsbeautifier-0.2.10.tgz";
      name = "grunt-jsbeautifier-0.2.10.tgz";
      sha1 = "19ddbc605f91b16461d2d44aec595190fcad94a6";
    };
    deps = {
      "grunt-0.4.5" = self.by-version."grunt"."0.4.5";
      "js-beautify-1.5.6" = self.by-version."js-beautify"."1.5.6";
      "lodash-3.9.3" = self.by-version."lodash"."3.9.3";
      "rc-1.0.3" = self.by-version."rc"."1.0.3";
      "semver-4.3.6" = self.by-version."semver"."4.3.6";
      "underscore.string-3.1.1" = self.by-version."underscore.string"."3.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "grunt-jsbeautifier" = self.by-version."grunt-jsbeautifier"."0.2.10";
  by-spec."grunt-legacy-log"."~0.1.0" =
    self.by-version."grunt-legacy-log"."0.1.2";
  by-version."grunt-legacy-log"."0.1.2" = self.buildNodePackage {
    name = "grunt-legacy-log-0.1.2";
    version = "0.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/grunt-legacy-log/-/grunt-legacy-log-0.1.2.tgz";
      name = "grunt-legacy-log-0.1.2.tgz";
      sha1 = "15ee03b61e262e1b36f13762d967923cd1ce515e";
    };
    deps = {
      "colors-0.6.2" = self.by-version."colors"."0.6.2";
      "grunt-legacy-log-utils-0.1.1" = self.by-version."grunt-legacy-log-utils"."0.1.1";
      "hooker-0.2.3" = self.by-version."hooker"."0.2.3";
      "lodash-2.4.2" = self.by-version."lodash"."2.4.2";
      "underscore.string-2.3.3" = self.by-version."underscore.string"."2.3.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."grunt-legacy-log-utils"."^0.1.1" =
    self.by-version."grunt-legacy-log-utils"."0.1.1";
  by-version."grunt-legacy-log-utils"."0.1.1" = self.buildNodePackage {
    name = "grunt-legacy-log-utils-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/grunt-legacy-log-utils/-/grunt-legacy-log-utils-0.1.1.tgz";
      name = "grunt-legacy-log-utils-0.1.1.tgz";
      sha1 = "c0706b9dd9064e116f36f23fe4e6b048672c0f7e";
    };
    deps = {
      "lodash-2.4.2" = self.by-version."lodash"."2.4.2";
      "underscore.string-2.3.3" = self.by-version."underscore.string"."2.3.3";
      "colors-0.6.2" = self.by-version."colors"."0.6.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."grunt-legacy-util"."~0.2.0" =
    self.by-version."grunt-legacy-util"."0.2.0";
  by-version."grunt-legacy-util"."0.2.0" = self.buildNodePackage {
    name = "grunt-legacy-util-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/grunt-legacy-util/-/grunt-legacy-util-0.2.0.tgz";
      name = "grunt-legacy-util-0.2.0.tgz";
      sha1 = "93324884dbf7e37a9ff7c026dff451d94a9e554b";
    };
    deps = {
      "hooker-0.2.3" = self.by-version."hooker"."0.2.3";
      "async-0.1.22" = self.by-version."async"."0.1.22";
      "lodash-0.9.2" = self.by-version."lodash"."0.9.2";
      "exit-0.1.2" = self.by-version."exit"."0.1.2";
      "underscore.string-2.2.1" = self.by-version."underscore.string"."2.2.1";
      "getobject-0.1.0" = self.by-version."getobject"."0.1.0";
      "which-1.0.9" = self.by-version."which"."1.0.9";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."grunt-node-webkit-builder"."0.1.x" =
    self.by-version."grunt-node-webkit-builder"."0.1.21";
  by-version."grunt-node-webkit-builder"."0.1.21" = self.buildNodePackage {
    name = "grunt-node-webkit-builder-0.1.21";
    version = "0.1.21";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/grunt-node-webkit-builder/-/grunt-node-webkit-builder-0.1.21.tgz";
      name = "grunt-node-webkit-builder-0.1.21.tgz";
      sha1 = "1a86a2bf2f1f048064b79cfeae2501f7aed07114";
    };
    deps = {
      "archiver-0.9.1" = self.by-version."archiver"."0.9.1";
      "async-0.2.10" = self.by-version."async"."0.2.10";
      "lazystream-0.1.0" = self.by-version."lazystream"."0.1.0";
      "lodash-2.4.2" = self.by-version."lodash"."2.4.2";
      "plist-0.4.3" = self.by-version."plist"."0.4.3";
      "q-1.0.1" = self.by-version."q"."1.0.1";
      "request-2.33.0" = self.by-version."request"."2.33.0";
      "request-progress-0.3.1" = self.by-version."request-progress"."0.3.1";
      "tar-fs-0.3.3" = self.by-version."tar-fs"."0.3.3";
      "unzip-0.1.11" = self.by-version."unzip"."0.1.11";
      "zip-1.1.1" = self.by-version."zip"."1.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [
      self.by-version."grunt"."0.4.5"];
    os = [ ];
    cpu = [ ];
  };
  "grunt-node-webkit-builder" = self.by-version."grunt-node-webkit-builder"."0.1.21";
  by-spec."grunt-shell"."^1.1.1" =
    self.by-version."grunt-shell"."1.1.2";
  by-version."grunt-shell"."1.1.2" = self.buildNodePackage {
    name = "grunt-shell-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/grunt-shell/-/grunt-shell-1.1.2.tgz";
      name = "grunt-shell-1.1.2.tgz";
      sha1 = "473e465301d29d0b56df16fe310798ce714d0956";
    };
    deps = {
      "chalk-1.0.0" = self.by-version."chalk"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "grunt-shell" = self.by-version."grunt-shell"."1.1.2";
  by-spec."handlebars"."~1.0.12" =
    self.by-version."handlebars"."1.0.12";
  by-version."handlebars"."1.0.12" = self.buildNodePackage {
    name = "handlebars-1.0.12";
    version = "1.0.12";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/handlebars/-/handlebars-1.0.12.tgz";
      name = "handlebars-1.0.12.tgz";
      sha1 = "18c6d3440c35e91b19b3ff582b9151ab4985d4fc";
    };
    deps = {
      "optimist-0.3.7" = self.by-version."optimist"."0.3.7";
      "uglify-js-2.3.6" = self.by-version."uglify-js"."2.3.6";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."handlebars"."~1.3.0" =
    self.by-version."handlebars"."1.3.0";
  by-version."handlebars"."1.3.0" = self.buildNodePackage {
    name = "handlebars-1.3.0";
    version = "1.3.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/handlebars/-/handlebars-1.3.0.tgz";
      name = "handlebars-1.3.0.tgz";
      sha1 = "9e9b130a93e389491322d975cf3ec1818c37ce34";
    };
    deps = {
      "optimist-0.3.7" = self.by-version."optimist"."0.3.7";
    };
    optionalDependencies = {
      "uglify-js-2.3.6" = self.by-version."uglify-js"."2.3.6";
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."handlebars"."~2.0.0" =
    self.by-version."handlebars"."2.0.0";
  by-version."handlebars"."2.0.0" = self.buildNodePackage {
    name = "handlebars-2.0.0";
    version = "2.0.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/handlebars/-/handlebars-2.0.0.tgz";
      name = "handlebars-2.0.0.tgz";
      sha1 = "6e9d7f8514a3467fa5e9f82cc158ecfc1d5ac76f";
    };
    deps = {
      "optimist-0.3.7" = self.by-version."optimist"."0.3.7";
    };
    optionalDependencies = {
      "uglify-js-2.3.6" = self.by-version."uglify-js"."2.3.6";
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."har-validator"."^1.6.1" =
    self.by-version."har-validator"."1.7.1";
  by-version."har-validator"."1.7.1" = self.buildNodePackage {
    name = "har-validator-1.7.1";
    version = "1.7.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/har-validator/-/har-validator-1.7.1.tgz";
      name = "har-validator-1.7.1.tgz";
      sha1 = "8ec8952f8287d21b451ba3e36f27ed8d997d8a95";
    };
    deps = {
      "bluebird-2.9.27" = self.by-version."bluebird"."2.9.27";
      "chalk-1.0.0" = self.by-version."chalk"."1.0.0";
      "commander-2.8.1" = self.by-version."commander"."2.8.1";
      "is-my-json-valid-2.12.0" = self.by-version."is-my-json-valid"."2.12.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."has-ansi"."^0.1.0" =
    self.by-version."has-ansi"."0.1.0";
  by-version."has-ansi"."0.1.0" = self.buildNodePackage {
    name = "has-ansi-0.1.0";
    version = "0.1.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/has-ansi/-/has-ansi-0.1.0.tgz";
      name = "has-ansi-0.1.0.tgz";
      sha1 = "84f265aae8c0e6a88a12d7022894b7568894c62e";
    };
    deps = {
      "ansi-regex-0.2.1" = self.by-version."ansi-regex"."0.2.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."has-ansi"."^1.0.3" =
    self.by-version."has-ansi"."1.0.3";
  by-version."has-ansi"."1.0.3" = self.buildNodePackage {
    name = "has-ansi-1.0.3";
    version = "1.0.3";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/has-ansi/-/has-ansi-1.0.3.tgz";
      name = "has-ansi-1.0.3.tgz";
      sha1 = "c0b5b1615d9e382b0ff67169d967b425e48ca538";
    };
    deps = {
      "ansi-regex-1.1.1" = self.by-version."ansi-regex"."1.1.1";
      "get-stdin-4.0.1" = self.by-version."get-stdin"."4.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."has-color"."~0.1.0" =
    self.by-version."has-color"."0.1.7";
  by-version."has-color"."0.1.7" = self.buildNodePackage {
    name = "has-color-0.1.7";
    version = "0.1.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/has-color/-/has-color-0.1.7.tgz";
      name = "has-color-0.1.7.tgz";
      sha1 = "67144a5260c34fc3cca677d041daf52fe7b78b2f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."hat"."0.0.3" =
    self.by-version."hat"."0.0.3";
  by-version."hat"."0.0.3" = self.buildNodePackage {
    name = "hat-0.0.3";
    version = "0.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/hat/-/hat-0.0.3.tgz";
      name = "hat-0.0.3.tgz";
      sha1 = "bb014a9e64b3788aed8005917413d4ff3d502d8a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."hat"."^0.0.3" =
    self.by-version."hat"."0.0.3";
  by-spec."hawk"."1.1.1" =
    self.by-version."hawk"."1.1.1";
  by-version."hawk"."1.1.1" = self.buildNodePackage {
    name = "hawk-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/hawk/-/hawk-1.1.1.tgz";
      name = "hawk-1.1.1.tgz";
      sha1 = "87cd491f9b46e4e2aeaca335416766885d2d1ed9";
    };
    deps = {
      "hoek-0.9.1" = self.by-version."hoek"."0.9.1";
      "boom-0.4.2" = self.by-version."boom"."0.4.2";
      "cryptiles-0.2.2" = self.by-version."cryptiles"."0.2.2";
      "sntp-0.2.4" = self.by-version."sntp"."0.2.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."hawk"."~0.10.2" =
    self.by-version."hawk"."0.10.2";
  by-version."hawk"."0.10.2" = self.buildNodePackage {
    name = "hawk-0.10.2";
    version = "0.10.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/hawk/-/hawk-0.10.2.tgz";
      name = "hawk-0.10.2.tgz";
      sha1 = "9b361dee95a931640e6d504e05609a8fc3ac45d2";
    };
    deps = {
      "hoek-0.7.6" = self.by-version."hoek"."0.7.6";
      "boom-0.3.8" = self.by-version."boom"."0.3.8";
      "cryptiles-0.1.3" = self.by-version."cryptiles"."0.1.3";
      "sntp-0.1.4" = self.by-version."sntp"."0.1.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."hawk"."~1.0.0" =
    self.by-version."hawk"."1.0.0";
  by-version."hawk"."1.0.0" = self.buildNodePackage {
    name = "hawk-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/hawk/-/hawk-1.0.0.tgz";
      name = "hawk-1.0.0.tgz";
      sha1 = "b90bb169807285411da7ffcb8dd2598502d3b52d";
    };
    deps = {
      "hoek-0.9.1" = self.by-version."hoek"."0.9.1";
      "boom-0.4.2" = self.by-version."boom"."0.4.2";
      "cryptiles-0.2.2" = self.by-version."cryptiles"."0.2.2";
      "sntp-0.2.4" = self.by-version."sntp"."0.2.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."hawk"."~2.3.0" =
    self.by-version."hawk"."2.3.1";
  by-version."hawk"."2.3.1" = self.buildNodePackage {
    name = "hawk-2.3.1";
    version = "2.3.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/hawk/-/hawk-2.3.1.tgz";
      name = "hawk-2.3.1.tgz";
      sha1 = "1e731ce39447fa1d0f6d707f7bceebec0fd1ec1f";
    };
    deps = {
      "hoek-2.14.0" = self.by-version."hoek"."2.14.0";
      "boom-2.7.2" = self.by-version."boom"."2.7.2";
      "cryptiles-2.0.4" = self.by-version."cryptiles"."2.0.4";
      "sntp-1.0.9" = self.by-version."sntp"."1.0.9";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."hoek"."0.7.x" =
    self.by-version."hoek"."0.7.6";
  by-version."hoek"."0.7.6" = self.buildNodePackage {
    name = "hoek-0.7.6";
    version = "0.7.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/hoek/-/hoek-0.7.6.tgz";
      name = "hoek-0.7.6.tgz";
      sha1 = "60fbd904557541cd2b8795abf308a1b3770e155a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."hoek"."0.9.x" =
    self.by-version."hoek"."0.9.1";
  by-version."hoek"."0.9.1" = self.buildNodePackage {
    name = "hoek-0.9.1";
    version = "0.9.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/hoek/-/hoek-0.9.1.tgz";
      name = "hoek-0.9.1.tgz";
      sha1 = "3d322462badf07716ea7eb85baf88079cddce505";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."hoek"."2.x.x" =
    self.by-version."hoek"."2.14.0";
  by-version."hoek"."2.14.0" = self.buildNodePackage {
    name = "hoek-2.14.0";
    version = "2.14.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/hoek/-/hoek-2.14.0.tgz";
      name = "hoek-2.14.0.tgz";
      sha1 = "81211691f52a5a835ae49edbf1e89c9003476aa4";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."hooker"."~0.2.3" =
    self.by-version."hooker"."0.2.3";
  by-version."hooker"."0.2.3" = self.buildNodePackage {
    name = "hooker-0.2.3";
    version = "0.2.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/hooker/-/hooker-0.2.3.tgz";
      name = "hooker-0.2.3.tgz";
      sha1 = "b834f723cc4a242aa65963459df6d984c5d3d959";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."htmlparser2"."3.8.x" =
    self.by-version."htmlparser2"."3.8.3";
  by-version."htmlparser2"."3.8.3" = self.buildNodePackage {
    name = "htmlparser2-3.8.3";
    version = "3.8.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/htmlparser2/-/htmlparser2-3.8.3.tgz";
      name = "htmlparser2-3.8.3.tgz";
      sha1 = "996c28b191516a8be86501a7d79757e5c70c1068";
    };
    deps = {
      "domhandler-2.3.0" = self.by-version."domhandler"."2.3.0";
      "domutils-1.5.1" = self.by-version."domutils"."1.5.1";
      "domelementtype-1.3.0" = self.by-version."domelementtype"."1.3.0";
      "readable-stream-1.1.13" = self.by-version."readable-stream"."1.1.13";
      "entities-1.0.0" = self.by-version."entities"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."http-signature"."~0.10.0" =
    self.by-version."http-signature"."0.10.1";
  by-version."http-signature"."0.10.1" = self.buildNodePackage {
    name = "http-signature-0.10.1";
    version = "0.10.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/http-signature/-/http-signature-0.10.1.tgz";
      name = "http-signature-0.10.1.tgz";
      sha1 = "4fbdac132559aa8323121e540779c0a012b27e66";
    };
    deps = {
      "assert-plus-0.1.5" = self.by-version."assert-plus"."0.1.5";
      "asn1-0.1.11" = self.by-version."asn1"."0.1.11";
      "ctype-0.5.3" = self.by-version."ctype"."0.5.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."http-signature"."~0.11.0" =
    self.by-version."http-signature"."0.11.0";
  by-version."http-signature"."0.11.0" = self.buildNodePackage {
    name = "http-signature-0.11.0";
    version = "0.11.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/http-signature/-/http-signature-0.11.0.tgz";
      name = "http-signature-0.11.0.tgz";
      sha1 = "1796cf67a001ad5cd6849dca0991485f09089fe6";
    };
    deps = {
      "assert-plus-0.1.5" = self.by-version."assert-plus"."0.1.5";
      "asn1-0.1.11" = self.by-version."asn1"."0.1.11";
      "ctype-0.5.3" = self.by-version."ctype"."0.5.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."i18n"."0.5.0" =
    self.by-version."i18n"."0.5.0";
  by-version."i18n"."0.5.0" = self.buildNodePackage {
    name = "i18n-0.5.0";
    version = "0.5.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/i18n/-/i18n-0.5.0.tgz";
      name = "i18n-0.5.0.tgz";
      sha1 = "0da77ad27f82785d8a2db5c67c6a2ca3997c1bbe";
    };
    deps = {
      "sprintf-0.1.5" = self.by-version."sprintf"."0.1.5";
      "mustache-2.1.0" = self.by-version."mustache"."2.1.0";
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "i18n" = self.by-version."i18n"."0.5.0";
  by-spec."iconv-lite"."^0.4.3" =
    self.by-version."iconv-lite"."0.4.10";
  by-version."iconv-lite"."0.4.10" = self.buildNodePackage {
    name = "iconv-lite-0.4.10";
    version = "0.4.10";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/iconv-lite/-/iconv-lite-0.4.10.tgz";
      name = "iconv-lite-0.4.10.tgz";
      sha1 = "4f1a2562efd36d41c54d45c59999b590951796de";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "iconv-lite" = self.by-version."iconv-lite"."0.4.10";
  by-spec."iconv-lite"."^0.4.4" =
    self.by-version."iconv-lite"."0.4.10";
  by-spec."iconv-lite"."~0.2.11" =
    self.by-version."iconv-lite"."0.2.11";
  by-version."iconv-lite"."0.2.11" = self.buildNodePackage {
    name = "iconv-lite-0.2.11";
    version = "0.2.11";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/iconv-lite/-/iconv-lite-0.2.11.tgz";
      name = "iconv-lite-0.2.11.tgz";
      sha1 = "1ce60a3a57864a292d1321ff4609ca4bb965adc8";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."infinity-agent"."^2.0.0" =
    self.by-version."infinity-agent"."2.0.3";
  by-version."infinity-agent"."2.0.3" = self.buildNodePackage {
    name = "infinity-agent-2.0.3";
    version = "2.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/infinity-agent/-/infinity-agent-2.0.3.tgz";
      name = "infinity-agent-2.0.3.tgz";
      sha1 = "45e0e2ff7a9eb030b27d62b74b3744b7a7ac4216";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."inflight"."^1.0.4" =
    self.by-version."inflight"."1.0.4";
  by-version."inflight"."1.0.4" = self.buildNodePackage {
    name = "inflight-1.0.4";
    version = "1.0.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/inflight/-/inflight-1.0.4.tgz";
      name = "inflight-1.0.4.tgz";
      sha1 = "6cbb4521ebd51ce0ec0a936bfd7657ef7e9b172a";
    };
    deps = {
      "once-1.3.2" = self.by-version."once"."1.3.2";
      "wrappy-1.0.1" = self.by-version."wrappy"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."inherits"."1" =
    self.by-version."inherits"."1.0.0";
  by-version."inherits"."1.0.0" = self.buildNodePackage {
    name = "inherits-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/inherits/-/inherits-1.0.0.tgz";
      name = "inherits-1.0.0.tgz";
      sha1 = "38e1975285bf1f7ba9c84da102bb12771322ac48";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."inherits"."2" =
    self.by-version."inherits"."2.0.1";
  by-version."inherits"."2.0.1" = self.buildNodePackage {
    name = "inherits-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/inherits/-/inherits-2.0.1.tgz";
      name = "inherits-2.0.1.tgz";
      sha1 = "b17d08d326b4423e568eff719f91b0b1cbdf69f1";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."inherits"."^2.0.1" =
    self.by-version."inherits"."2.0.1";
  by-spec."inherits"."~2.0.0" =
    self.by-version."inherits"."2.0.1";
  by-spec."inherits"."~2.0.1" =
    self.by-version."inherits"."2.0.1";
  by-spec."ini"."1" =
    self.by-version."ini"."1.3.4";
  by-version."ini"."1.3.4" = self.buildNodePackage {
    name = "ini-1.3.4";
    version = "1.3.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ini/-/ini-1.3.4.tgz";
      name = "ini-1.3.4.tgz";
      sha1 = "0537cb79daf59b59a1a517dff706c86ec039162e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ini"."^1.2.0" =
    self.by-version."ini"."1.3.4";
  by-spec."ini"."~1.1.0" =
    self.by-version."ini"."1.1.0";
  by-version."ini"."1.1.0" = self.buildNodePackage {
    name = "ini-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ini/-/ini-1.1.0.tgz";
      name = "ini-1.1.0.tgz";
      sha1 = "4e808c2ce144c6c1788918e034d6797bc6cf6281";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ini"."~1.3.0" =
    self.by-version."ini"."1.3.4";
  by-spec."inquirer"."0.7.1" =
    self.by-version."inquirer"."0.7.1";
  by-version."inquirer"."0.7.1" = self.buildNodePackage {
    name = "inquirer-0.7.1";
    version = "0.7.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/inquirer/-/inquirer-0.7.1.tgz";
      name = "inquirer-0.7.1.tgz";
      sha1 = "b8acf140165bd581862ed1198fb6d26430091fac";
    };
    deps = {
      "chalk-0.5.1" = self.by-version."chalk"."0.5.1";
      "cli-color-0.3.3" = self.by-version."cli-color"."0.3.3";
      "figures-1.3.5" = self.by-version."figures"."1.3.5";
      "lodash-2.4.2" = self.by-version."lodash"."2.4.2";
      "mute-stream-0.0.4" = self.by-version."mute-stream"."0.0.4";
      "readline2-0.1.1" = self.by-version."readline2"."0.1.1";
      "rx-2.5.3" = self.by-version."rx"."2.5.3";
      "through-2.3.7" = self.by-version."through"."2.3.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."inquirer"."^0.6.0" =
    self.by-version."inquirer"."0.6.0";
  by-version."inquirer"."0.6.0" = self.buildNodePackage {
    name = "inquirer-0.6.0";
    version = "0.6.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/inquirer/-/inquirer-0.6.0.tgz";
      name = "inquirer-0.6.0.tgz";
      sha1 = "614d7bb3e48f9e6a8028e94a0c38f23ef29823d3";
    };
    deps = {
      "chalk-0.5.1" = self.by-version."chalk"."0.5.1";
      "cli-color-0.3.3" = self.by-version."cli-color"."0.3.3";
      "lodash-2.4.2" = self.by-version."lodash"."2.4.2";
      "mute-stream-0.0.4" = self.by-version."mute-stream"."0.0.4";
      "readline2-0.1.1" = self.by-version."readline2"."0.1.1";
      "rx-2.5.3" = self.by-version."rx"."2.5.3";
      "through-2.3.7" = self.by-version."through"."2.3.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."inquirer"."^0.8.0" =
    self.by-version."inquirer"."0.8.5";
  by-version."inquirer"."0.8.5" = self.buildNodePackage {
    name = "inquirer-0.8.5";
    version = "0.8.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/inquirer/-/inquirer-0.8.5.tgz";
      name = "inquirer-0.8.5.tgz";
      sha1 = "dbd740cf6ca3b731296a63ce6f6d961851f336df";
    };
    deps = {
      "ansi-regex-1.1.1" = self.by-version."ansi-regex"."1.1.1";
      "chalk-1.0.0" = self.by-version."chalk"."1.0.0";
      "cli-width-1.0.1" = self.by-version."cli-width"."1.0.1";
      "figures-1.3.5" = self.by-version."figures"."1.3.5";
      "lodash-3.9.3" = self.by-version."lodash"."3.9.3";
      "readline2-0.1.1" = self.by-version."readline2"."0.1.1";
      "rx-2.5.3" = self.by-version."rx"."2.5.3";
      "through-2.3.7" = self.by-version."through"."2.3.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."inquirer"."~0.4.0" =
    self.by-version."inquirer"."0.4.1";
  by-version."inquirer"."0.4.1" = self.buildNodePackage {
    name = "inquirer-0.4.1";
    version = "0.4.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/inquirer/-/inquirer-0.4.1.tgz";
      name = "inquirer-0.4.1.tgz";
      sha1 = "6cf74eb1a347f97a1a207bea8ad1c987d0ff4b81";
    };
    deps = {
      "lodash-2.4.2" = self.by-version."lodash"."2.4.2";
      "async-0.2.10" = self.by-version."async"."0.2.10";
      "cli-color-0.2.3" = self.by-version."cli-color"."0.2.3";
      "mute-stream-0.0.4" = self.by-version."mute-stream"."0.0.4";
      "through-2.3.7" = self.by-version."through"."2.3.7";
      "readline2-0.1.1" = self.by-version."readline2"."0.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."inquirer"."~0.5.1" =
    self.by-version."inquirer"."0.5.1";
  by-version."inquirer"."0.5.1" = self.buildNodePackage {
    name = "inquirer-0.5.1";
    version = "0.5.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/inquirer/-/inquirer-0.5.1.tgz";
      name = "inquirer-0.5.1.tgz";
      sha1 = "e9f2cd1ee172c7a32e054b78a03d4ddb0d7707f1";
    };
    deps = {
      "async-0.8.0" = self.by-version."async"."0.8.0";
      "cli-color-0.3.3" = self.by-version."cli-color"."0.3.3";
      "lodash-2.4.2" = self.by-version."lodash"."2.4.2";
      "mute-stream-0.0.4" = self.by-version."mute-stream"."0.0.4";
      "readline2-0.1.1" = self.by-version."readline2"."0.1.1";
      "through-2.3.7" = self.by-version."through"."2.3.7";
      "chalk-0.4.0" = self.by-version."chalk"."0.4.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."insight"."0.4.3" =
    self.by-version."insight"."0.4.3";
  by-version."insight"."0.4.3" = self.buildNodePackage {
    name = "insight-0.4.3";
    version = "0.4.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/insight/-/insight-0.4.3.tgz";
      name = "insight-0.4.3.tgz";
      sha1 = "76d653c5c0d8048b03cdba6385a6948f74614af0";
    };
    deps = {
      "async-0.9.2" = self.by-version."async"."0.9.2";
      "chalk-0.5.1" = self.by-version."chalk"."0.5.1";
      "configstore-0.3.2" = self.by-version."configstore"."0.3.2";
      "inquirer-0.6.0" = self.by-version."inquirer"."0.6.0";
      "lodash.debounce-2.4.1" = self.by-version."lodash.debounce"."2.4.1";
      "object-assign-1.0.0" = self.by-version."object-assign"."1.0.0";
      "os-name-1.0.3" = self.by-version."os-name"."1.0.3";
      "request-2.57.0" = self.by-version."request"."2.57.0";
      "tough-cookie-0.12.1" = self.by-version."tough-cookie"."0.12.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."insight"."~0.3.0" =
    self.by-version."insight"."0.3.1";
  by-version."insight"."0.3.1" = self.buildNodePackage {
    name = "insight-0.3.1";
    version = "0.3.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/insight/-/insight-0.3.1.tgz";
      name = "insight-0.3.1.tgz";
      sha1 = "1a14f32c06115c0850338c38a253d707b611d448";
    };
    deps = {
      "chalk-0.4.0" = self.by-version."chalk"."0.4.0";
      "request-2.27.0" = self.by-version."request"."2.27.0";
      "configstore-0.2.3" = self.by-version."configstore"."0.2.3";
      "async-0.2.10" = self.by-version."async"."0.2.10";
      "inquirer-0.4.1" = self.by-version."inquirer"."0.4.1";
      "object-assign-0.1.2" = self.by-version."object-assign"."0.1.2";
      "lodash.debounce-2.4.1" = self.by-version."lodash.debounce"."2.4.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."intersect"."~0.0.3" =
    self.by-version."intersect"."0.0.3";
  by-version."intersect"."0.0.3" = self.buildNodePackage {
    name = "intersect-0.0.3";
    version = "0.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/intersect/-/intersect-0.0.3.tgz";
      name = "intersect-0.0.3.tgz";
      sha1 = "c1a4a5e5eac6ede4af7504cc07e0ada7bc9f4920";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ip"."^0.3.0" =
    self.by-version."ip"."0.3.3";
  by-version."ip"."0.3.3" = self.buildNodePackage {
    name = "ip-0.3.3";
    version = "0.3.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ip/-/ip-0.3.3.tgz";
      name = "ip-0.3.3.tgz";
      sha1 = "8ee8309e92f0b040d287f72efaca1a21702d3fb4";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ip"."^0.3.2" =
    self.by-version."ip"."0.3.3";
  by-spec."ip-regex"."^1.0.0" =
    self.by-version."ip-regex"."1.0.3";
  by-version."ip-regex"."1.0.3" = self.buildNodePackage {
    name = "ip-regex-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ip-regex/-/ip-regex-1.0.3.tgz";
      name = "ip-regex-1.0.3.tgz";
      sha1 = "dc589076f659f419c222039a33316f1c7387effd";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ip-set"."^1.0.0" =
    self.by-version."ip-set"."1.0.0";
  by-version."ip-set"."1.0.0" = self.buildNodePackage {
    name = "ip-set-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ip-set/-/ip-set-1.0.0.tgz";
      name = "ip-set-1.0.0.tgz";
      sha1 = "54782fb5ae37ab6e697a2b49e07748d9e069dda6";
    };
    deps = {
      "ip-0.3.3" = self.by-version."ip"."0.3.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ipaddr.js".">= 0.1.1" =
    self.by-version."ipaddr.js"."1.0.1";
  by-version."ipaddr.js"."1.0.1" = self.buildNodePackage {
    name = "ipaddr.js-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ipaddr.js/-/ipaddr.js-1.0.1.tgz";
      name = "ipaddr.js-1.0.1.tgz";
      sha1 = "5f38801dc73e0400fc7076386f6ed5215fbd8f95";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ipaddr.js".">= 0.1.5" =
    self.by-version."ipaddr.js"."1.0.1";
  by-spec."ipaddr.js"."^1.0.1" =
    self.by-version."ipaddr.js"."1.0.1";
  by-spec."ipaddr.js"."~0.1.3" =
    self.by-version."ipaddr.js"."0.1.9";
  by-version."ipaddr.js"."0.1.9" = self.buildNodePackage {
    name = "ipaddr.js-0.1.9";
    version = "0.1.9";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ipaddr.js/-/ipaddr.js-0.1.9.tgz";
      name = "ipaddr.js-0.1.9.tgz";
      sha1 = "a9c78ccc12dc9010f296ab9aef2f61f432d69efa";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-absolute"."^0.1.7" =
    self.by-version."is-absolute"."0.1.7";
  by-version."is-absolute"."0.1.7" = self.buildNodePackage {
    name = "is-absolute-0.1.7";
    version = "0.1.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-absolute/-/is-absolute-0.1.7.tgz";
      name = "is-absolute-0.1.7.tgz";
      sha1 = "847491119fccb5fb436217cc737f7faad50f603f";
    };
    deps = {
      "is-relative-0.1.3" = self.by-version."is-relative"."0.1.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-ip"."^1.0.0" =
    self.by-version."is-ip"."1.0.0";
  by-version."is-ip"."1.0.0" = self.buildNodePackage {
    name = "is-ip-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-ip/-/is-ip-1.0.0.tgz";
      name = "is-ip-1.0.0.tgz";
      sha1 = "2bb6959f797ccd6f9fdc812758bcbc87c4c59074";
    };
    deps = {
      "ip-regex-1.0.3" = self.by-version."ip-regex"."1.0.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-my-json-valid"."^2.12.0" =
    self.by-version."is-my-json-valid"."2.12.0";
  by-version."is-my-json-valid"."2.12.0" = self.buildNodePackage {
    name = "is-my-json-valid-2.12.0";
    version = "2.12.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-my-json-valid/-/is-my-json-valid-2.12.0.tgz";
      name = "is-my-json-valid-2.12.0.tgz";
      sha1 = "8fa6c408b26be95b45a23e8f8c4b464a53874d2b";
    };
    deps = {
      "generate-function-2.0.0" = self.by-version."generate-function"."2.0.0";
      "generate-object-property-1.2.0" = self.by-version."generate-object-property"."1.2.0";
      "jsonpointer-1.1.0" = self.by-version."jsonpointer"."1.1.0";
      "xtend-4.0.0" = self.by-version."xtend"."4.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-npm"."^1.0.0" =
    self.by-version."is-npm"."1.0.0";
  by-version."is-npm"."1.0.0" = self.buildNodePackage {
    name = "is-npm-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-npm/-/is-npm-1.0.0.tgz";
      name = "is-npm-1.0.0.tgz";
      sha1 = "f2fb63a65e4905b406c86072765a1a4dc793b9f4";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-property"."^1.0.0" =
    self.by-version."is-property"."1.0.2";
  by-version."is-property"."1.0.2" = self.buildNodePackage {
    name = "is-property-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-property/-/is-property-1.0.2.tgz";
      name = "is-property-1.0.2.tgz";
      sha1 = "57fe1c4e48474edd65b09911f26b1cd4095dda84";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-relative"."^0.1.0" =
    self.by-version."is-relative"."0.1.3";
  by-version."is-relative"."0.1.3" = self.buildNodePackage {
    name = "is-relative-0.1.3";
    version = "0.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-relative/-/is-relative-0.1.3.tgz";
      name = "is-relative-0.1.3.tgz";
      sha1 = "905fee8ae86f45b3ec614bc3c15c869df0876e82";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-root"."~0.1.0" =
    self.by-version."is-root"."0.1.0";
  by-version."is-root"."0.1.0" = self.buildNodePackage {
    name = "is-root-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-root/-/is-root-0.1.0.tgz";
      name = "is-root-0.1.0.tgz";
      sha1 = "825e394ab593df2d73c5d0092fce507270b53dcb";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-root"."~1.0.0" =
    self.by-version."is-root"."1.0.0";
  by-version."is-root"."1.0.0" = self.buildNodePackage {
    name = "is-root-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-root/-/is-root-1.0.0.tgz";
      name = "is-root-1.0.0.tgz";
      sha1 = "07b6c233bc394cd9d02ba15c966bd6660d6342d5";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-stream"."^1.0.0" =
    self.by-version."is-stream"."1.0.1";
  by-version."is-stream"."1.0.1" = self.buildNodePackage {
    name = "is-stream-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/is-stream/-/is-stream-1.0.1.tgz";
      name = "is-stream-1.0.1.tgz";
      sha1 = "b44ce45b1f0c3df583f6b5debf84dcf9743ac8b5";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."isarray"."0.0.1" =
    self.by-version."isarray"."0.0.1";
  by-version."isarray"."0.0.1" = self.buildNodePackage {
    name = "isarray-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/isarray/-/isarray-0.0.1.tgz";
      name = "isarray-0.0.1.tgz";
      sha1 = "8a18acfca9a8f4177e09abfc6038939b05d1eedf";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."isbinaryfile"."~0.1.9" =
    self.by-version."isbinaryfile"."0.1.9";
  by-version."isbinaryfile"."0.1.9" = self.buildNodePackage {
    name = "isbinaryfile-0.1.9";
    version = "0.1.9";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/isbinaryfile/-/isbinaryfile-0.1.9.tgz";
      name = "isbinaryfile-0.1.9.tgz";
      sha1 = "15eece35c4ab708d8924da99fb874f2b5cc0b6c4";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."isstream"."~0.1.1" =
    self.by-version."isstream"."0.1.2";
  by-version."isstream"."0.1.2" = self.buildNodePackage {
    name = "isstream-0.1.2";
    version = "0.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/isstream/-/isstream-0.1.2.tgz";
      name = "isstream-0.1.2.tgz";
      sha1 = "47e63f7af55afa6f92e1500e690eb8b8529c099a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."js-beautify".">=1.4.2" =
    self.by-version."js-beautify"."1.5.6";
  by-version."js-beautify"."1.5.6" = self.buildNodePackage {
    name = "js-beautify-1.5.6";
    version = "1.5.6";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/js-beautify/-/js-beautify-1.5.6.tgz";
      name = "js-beautify-1.5.6.tgz";
      sha1 = "59b6f03201a245ec47049b7dffafb7e346de6c84";
    };
    deps = {
      "config-chain-1.1.9" = self.by-version."config-chain"."1.1.9";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "nopt-3.0.2" = self.by-version."nopt"."3.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."js-yaml"."^3.1.0" =
    self.by-version."js-yaml"."3.3.1";
  by-version."js-yaml"."3.3.1" = self.buildNodePackage {
    name = "js-yaml-3.3.1";
    version = "3.3.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/js-yaml/-/js-yaml-3.3.1.tgz";
      name = "js-yaml-3.3.1.tgz";
      sha1 = "ca1acd3423ec275d12140a7bab51db015ba0b3c0";
    };
    deps = {
      "argparse-1.0.2" = self.by-version."argparse"."1.0.2";
      "esprima-2.2.0" = self.by-version."esprima"."2.2.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."js-yaml"."~2.0.5" =
    self.by-version."js-yaml"."2.0.5";
  by-version."js-yaml"."2.0.5" = self.buildNodePackage {
    name = "js-yaml-2.0.5";
    version = "2.0.5";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/js-yaml/-/js-yaml-2.0.5.tgz";
      name = "js-yaml-2.0.5.tgz";
      sha1 = "a25ae6509999e97df278c6719da11bd0687743a8";
    };
    deps = {
      "argparse-0.1.16" = self.by-version."argparse"."0.1.16";
      "esprima-1.0.4" = self.by-version."esprima"."1.0.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."js-yaml"."~3.0.1" =
    self.by-version."js-yaml"."3.0.2";
  by-version."js-yaml"."3.0.2" = self.buildNodePackage {
    name = "js-yaml-3.0.2";
    version = "3.0.2";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/js-yaml/-/js-yaml-3.0.2.tgz";
      name = "js-yaml-3.0.2.tgz";
      sha1 = "9937865f8e897a5e894e73c2c5cf2e89b32eb771";
    };
    deps = {
      "argparse-0.1.16" = self.by-version."argparse"."0.1.16";
      "esprima-1.0.4" = self.by-version."esprima"."1.0.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."jschardet"."1.1.0" =
    self.by-version."jschardet"."1.1.0";
  by-version."jschardet"."1.1.0" = self.buildNodePackage {
    name = "jschardet-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/jschardet/-/jschardet-1.1.0.tgz";
      name = "jschardet-1.1.0.tgz";
      sha1 = "c5b135ad430144c5cb73cdbc0dae43cac3adfade";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "jschardet" = self.by-version."jschardet"."1.1.0";
  by-spec."jshint"."~2.5.0" =
    self.by-version."jshint"."2.5.11";
  by-version."jshint"."2.5.11" = self.buildNodePackage {
    name = "jshint-2.5.11";
    version = "2.5.11";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/jshint/-/jshint-2.5.11.tgz";
      name = "jshint-2.5.11.tgz";
      sha1 = "e2d95858bbb1aa78300108a2e81099fb095622e0";
    };
    deps = {
      "cli-0.6.6" = self.by-version."cli"."0.6.6";
      "console-browserify-1.1.0" = self.by-version."console-browserify"."1.1.0";
      "exit-0.1.2" = self.by-version."exit"."0.1.2";
      "htmlparser2-3.8.3" = self.by-version."htmlparser2"."3.8.3";
      "minimatch-1.0.0" = self.by-version."minimatch"."1.0.0";
      "shelljs-0.3.0" = self.by-version."shelljs"."0.3.0";
      "strip-json-comments-1.0.2" = self.by-version."strip-json-comments"."1.0.2";
      "underscore-1.6.0" = self.by-version."underscore"."1.6.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."json-rpc2"."^0.7.0" =
    self.by-version."json-rpc2"."0.7.1";
  by-version."json-rpc2"."0.7.1" = self.buildNodePackage {
    name = "json-rpc2-0.7.1";
    version = "0.7.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/json-rpc2/-/json-rpc2-0.7.1.tgz";
      name = "json-rpc2-0.7.1.tgz";
      sha1 = "b0edbad47192c6c98de4ee4669de6cc4d225e320";
    };
    deps = {
      "jsonparse-1.0.0" = self.by-version."jsonparse"."1.0.0";
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "lodash-3.9.3" = self.by-version."lodash"."3.9.3";
      "es5class-2.3.1" = self.by-version."es5class"."2.3.1";
      "faye-websocket-0.9.4" = self.by-version."faye-websocket"."0.9.4";
      "eventemitter3-1.1.0" = self.by-version."eventemitter3"."1.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "json-rpc2" = self.by-version."json-rpc2"."0.7.1";
  by-spec."json-stringify-safe"."~3.0.0" =
    self.by-version."json-stringify-safe"."3.0.0";
  by-version."json-stringify-safe"."3.0.0" = self.buildNodePackage {
    name = "json-stringify-safe-3.0.0";
    version = "3.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/json-stringify-safe/-/json-stringify-safe-3.0.0.tgz";
      name = "json-stringify-safe-3.0.0.tgz";
      sha1 = "9db7b0e530c7f289c5e8c8432af191c2ff75a5b3";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."json-stringify-safe"."~5.0.0" =
    self.by-version."json-stringify-safe"."5.0.1";
  by-version."json-stringify-safe"."5.0.1" = self.buildNodePackage {
    name = "json-stringify-safe-5.0.1";
    version = "5.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/json-stringify-safe/-/json-stringify-safe-5.0.1.tgz";
      name = "json-stringify-safe-5.0.1.tgz";
      sha1 = "1296a2d58fd45f19a0f6ce01d65701e2c735b6eb";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."jsonify"."~0.0.0" =
    self.by-version."jsonify"."0.0.0";
  by-version."jsonify"."0.0.0" = self.buildNodePackage {
    name = "jsonify-0.0.0";
    version = "0.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/jsonify/-/jsonify-0.0.0.tgz";
      name = "jsonify-0.0.0.tgz";
      sha1 = "2c74b6ee41d93ca51b7b5aaee8f503631d252a73";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."jsonparse"."*" =
    self.by-version."jsonparse"."1.0.0";
  by-version."jsonparse"."1.0.0" = self.buildNodePackage {
    name = "jsonparse-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/jsonparse/-/jsonparse-1.0.0.tgz";
      name = "jsonparse-1.0.0.tgz";
      sha1 = "2622f4e66c08e1aac7edbeb76053c9b7e1211f76";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."jsonpointer"."^1.1.0" =
    self.by-version."jsonpointer"."1.1.0";
  by-version."jsonpointer"."1.1.0" = self.buildNodePackage {
    name = "jsonpointer-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/jsonpointer/-/jsonpointer-1.1.0.tgz";
      name = "jsonpointer-1.1.0.tgz";
      sha1 = "c3c72efaed3b97154163dc01dd349e1cfe0f80fc";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."junk"."~0.3.0" =
    self.by-version."junk"."0.3.0";
  by-version."junk"."0.3.0" = self.buildNodePackage {
    name = "junk-0.3.0";
    version = "0.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/junk/-/junk-0.3.0.tgz";
      name = "junk-0.3.0.tgz";
      sha1 = "6c89c636f6e99898d8efbfc50430db40be71e10c";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."junk"."~1.0.0" =
    self.by-version."junk"."1.0.1";
  by-version."junk"."1.0.1" = self.buildNodePackage {
    name = "junk-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/junk/-/junk-1.0.1.tgz";
      name = "junk-1.0.1.tgz";
      sha1 = "824ef8925f02026f61bc6e6fa346b25fa8f3938b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."k-bucket"."^0.4.2" =
    self.by-version."k-bucket"."0.4.4";
  by-version."k-bucket"."0.4.4" = self.buildNodePackage {
    name = "k-bucket-0.4.4";
    version = "0.4.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/k-bucket/-/k-bucket-0.4.4.tgz";
      name = "k-bucket-0.4.4.tgz";
      sha1 = "f7a2955754de2fb7a0159a0fc28fcd5fac0c603b";
    };
    deps = {
      "buffer-equal-0.0.1" = self.by-version."buffer-equal"."0.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."keypress"."^0.2.1" =
    self.by-version."keypress"."0.2.1";
  by-version."keypress"."0.2.1" = self.buildNodePackage {
    name = "keypress-0.2.1";
    version = "0.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/keypress/-/keypress-0.2.1.tgz";
      name = "keypress-0.2.1.tgz";
      sha1 = "1e80454250018dbad4c3fe94497d6e67b6269c77";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."latest-version"."^0.2.0" =
    self.by-version."latest-version"."0.2.0";
  by-version."latest-version"."0.2.0" = self.buildNodePackage {
    name = "latest-version-0.2.0";
    version = "0.2.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/latest-version/-/latest-version-0.2.0.tgz";
      name = "latest-version-0.2.0.tgz";
      sha1 = "adaf898d5f22380d3f9c45386efdff0a1b5b7501";
    };
    deps = {
      "package-json-0.2.0" = self.by-version."package-json"."0.2.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."latest-version"."^1.0.0" =
    self.by-version."latest-version"."1.0.0";
  by-version."latest-version"."1.0.0" = self.buildNodePackage {
    name = "latest-version-1.0.0";
    version = "1.0.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/latest-version/-/latest-version-1.0.0.tgz";
      name = "latest-version-1.0.0.tgz";
      sha1 = "84f40e5c90745c7e4f7811624d6152c381d931d9";
    };
    deps = {
      "package-json-1.2.0" = self.by-version."package-json"."1.2.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lazystream"."~0.1.0" =
    self.by-version."lazystream"."0.1.0";
  by-version."lazystream"."0.1.0" = self.buildNodePackage {
    name = "lazystream-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lazystream/-/lazystream-0.1.0.tgz";
      name = "lazystream-0.1.0.tgz";
      sha1 = "1b25d63c772a4c20f0a5ed0a9d77f484b6e16920";
    };
    deps = {
      "readable-stream-1.0.33" = self.by-version."readable-stream"."1.0.33";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."load-grunt-tasks"."0.4.0" =
    self.by-version."load-grunt-tasks"."0.4.0";
  by-version."load-grunt-tasks"."0.4.0" = self.buildNodePackage {
    name = "load-grunt-tasks-0.4.0";
    version = "0.4.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/load-grunt-tasks/-/load-grunt-tasks-0.4.0.tgz";
      name = "load-grunt-tasks-0.4.0.tgz";
      sha1 = "f824663ffba251b574efda5a935afacefe0a95f4";
    };
    deps = {
      "findup-sync-0.1.3" = self.by-version."findup-sync"."0.1.3";
      "multimatch-0.1.0" = self.by-version."multimatch"."0.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "load-grunt-tasks" = self.by-version."load-grunt-tasks"."0.4.0";
  by-spec."lockfile"."~0.4.2" =
    self.by-version."lockfile"."0.4.3";
  by-version."lockfile"."0.4.3" = self.buildNodePackage {
    name = "lockfile-0.4.3";
    version = "0.4.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lockfile/-/lockfile-0.4.3.tgz";
      name = "lockfile-0.4.3.tgz";
      sha1 = "79b965ee9b32d9dd24b59cf81205e6dcb6d3b224";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lockfile"."~1.0.0" =
    self.by-version."lockfile"."1.0.1";
  by-version."lockfile"."1.0.1" = self.buildNodePackage {
    name = "lockfile-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lockfile/-/lockfile-1.0.1.tgz";
      name = "lockfile-1.0.1.tgz";
      sha1 = "9d353ecfe3f54d150bb57f89d51746935a39c4f5";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash"."*" =
    self.by-version."lodash"."3.9.3";
  by-version."lodash"."3.9.3" = self.buildNodePackage {
    name = "lodash-3.9.3";
    version = "3.9.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash/-/lodash-3.9.3.tgz";
      name = "lodash-3.9.3.tgz";
      sha1 = "0159e86832feffc6d61d852b12a953b99496bd32";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash".">= 3.2.0 < 4.0.0" =
    self.by-version."lodash"."3.9.3";
  by-spec."lodash".">=2.4.1" =
    self.by-version."lodash"."3.9.3";
  by-spec."lodash"."^2.4.1" =
    self.by-version."lodash"."2.4.2";
  by-version."lodash"."2.4.2" = self.buildNodePackage {
    name = "lodash-2.4.2";
    version = "2.4.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash/-/lodash-2.4.2.tgz";
      name = "lodash-2.4.2.tgz";
      sha1 = "fadd834b9683073da179b3eae6d9c0d15053f73e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash"."^3.3.1" =
    self.by-version."lodash"."3.9.3";
  by-spec."lodash"."^3.5.0" =
    self.by-version."lodash"."3.9.3";
  by-spec."lodash"."~0.9.2" =
    self.by-version."lodash"."0.9.2";
  by-version."lodash"."0.9.2" = self.buildNodePackage {
    name = "lodash-0.9.2";
    version = "0.9.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash/-/lodash-0.9.2.tgz";
      name = "lodash-0.9.2.tgz";
      sha1 = "8f3499c5245d346d682e5b0d3b40767e09f1a92c";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash"."~1.0.1" =
    self.by-version."lodash"."1.0.2";
  by-version."lodash"."1.0.2" = self.buildNodePackage {
    name = "lodash-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash/-/lodash-1.0.2.tgz";
      name = "lodash-1.0.2.tgz";
      sha1 = "8f57560c83b59fc270bd3d561b690043430e2551";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash"."~1.3.1" =
    self.by-version."lodash"."1.3.1";
  by-version."lodash"."1.3.1" = self.buildNodePackage {
    name = "lodash-1.3.1";
    version = "1.3.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash/-/lodash-1.3.1.tgz";
      name = "lodash-1.3.1.tgz";
      sha1 = "a4663b53686b895ff074e2ba504dfb76a8e2b770";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash"."~2.1.0" =
    self.by-version."lodash"."2.1.0";
  by-version."lodash"."2.1.0" = self.buildNodePackage {
    name = "lodash-2.1.0";
    version = "2.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash/-/lodash-2.1.0.tgz";
      name = "lodash-2.1.0.tgz";
      sha1 = "0637eaaa36a8a1cfc865c3adfb942189bfb0998d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash"."~2.4.1" =
    self.by-version."lodash"."2.4.2";
  by-spec."lodash._isnative"."~2.4.1" =
    self.by-version."lodash._isnative"."2.4.1";
  by-version."lodash._isnative"."2.4.1" = self.buildNodePackage {
    name = "lodash._isnative-2.4.1";
    version = "2.4.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash._isnative/-/lodash._isnative-2.4.1.tgz";
      name = "lodash._isnative-2.4.1.tgz";
      sha1 = "3ea6404b784a7be836c7b57580e1cdf79b14832c";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash._objecttypes"."~2.4.1" =
    self.by-version."lodash._objecttypes"."2.4.1";
  by-version."lodash._objecttypes"."2.4.1" = self.buildNodePackage {
    name = "lodash._objecttypes-2.4.1";
    version = "2.4.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash._objecttypes/-/lodash._objecttypes-2.4.1.tgz";
      name = "lodash._objecttypes-2.4.1.tgz";
      sha1 = "7c0b7f69d98a1f76529f890b0cdb1b4dfec11c11";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.debounce"."^2.4.1" =
    self.by-version."lodash.debounce"."2.4.1";
  by-version."lodash.debounce"."2.4.1" = self.buildNodePackage {
    name = "lodash.debounce-2.4.1";
    version = "2.4.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash.debounce/-/lodash.debounce-2.4.1.tgz";
      name = "lodash.debounce-2.4.1.tgz";
      sha1 = "d8cead246ec4b926e8b85678fc396bfeba8cc6fc";
    };
    deps = {
      "lodash.isfunction-2.4.1" = self.by-version."lodash.isfunction"."2.4.1";
      "lodash.isobject-2.4.1" = self.by-version."lodash.isobject"."2.4.1";
      "lodash.now-2.4.1" = self.by-version."lodash.now"."2.4.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.debounce"."~2.4.1" =
    self.by-version."lodash.debounce"."2.4.1";
  by-spec."lodash.isfunction"."~2.4.1" =
    self.by-version."lodash.isfunction"."2.4.1";
  by-version."lodash.isfunction"."2.4.1" = self.buildNodePackage {
    name = "lodash.isfunction-2.4.1";
    version = "2.4.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash.isfunction/-/lodash.isfunction-2.4.1.tgz";
      name = "lodash.isfunction-2.4.1.tgz";
      sha1 = "2cfd575c73e498ab57e319b77fa02adef13a94d1";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.isobject"."~2.4.1" =
    self.by-version."lodash.isobject"."2.4.1";
  by-version."lodash.isobject"."2.4.1" = self.buildNodePackage {
    name = "lodash.isobject-2.4.1";
    version = "2.4.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash.isobject/-/lodash.isobject-2.4.1.tgz";
      name = "lodash.isobject-2.4.1.tgz";
      sha1 = "5a2e47fe69953f1ee631a7eba1fe64d2d06558f5";
    };
    deps = {
      "lodash._objecttypes-2.4.1" = self.by-version."lodash._objecttypes"."2.4.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.now"."~2.4.1" =
    self.by-version."lodash.now"."2.4.1";
  by-version."lodash.now"."2.4.1" = self.buildNodePackage {
    name = "lodash.now-2.4.1";
    version = "2.4.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lodash.now/-/lodash.now-2.4.1.tgz";
      name = "lodash.now-2.4.1.tgz";
      sha1 = "6872156500525185faf96785bb7fe7fe15b562c6";
    };
    deps = {
      "lodash._isnative-2.4.1" = self.by-version."lodash._isnative"."2.4.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."long"."~2 >=2.2.3" =
    self.by-version."long"."2.2.3";
  by-version."long"."2.2.3" = self.buildNodePackage {
    name = "long-2.2.3";
    version = "2.2.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/long/-/long-2.2.3.tgz";
      name = "long-2.2.3.tgz";
      sha1 = "635f5b530b3bd3ecb000a2ffb11281583c7f1e07";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lowercase-keys"."^1.0.0" =
    self.by-version."lowercase-keys"."1.0.0";
  by-version."lowercase-keys"."1.0.0" = self.buildNodePackage {
    name = "lowercase-keys-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lowercase-keys/-/lowercase-keys-1.0.0.tgz";
      name = "lowercase-keys-1.0.0.tgz";
      sha1 = "4e3366b39e7f5457e35f1324bdf6f88d0bfc7306";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lru-cache"."2" =
    self.by-version."lru-cache"."2.6.4";
  by-version."lru-cache"."2.6.4" = self.buildNodePackage {
    name = "lru-cache-2.6.4";
    version = "2.6.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lru-cache/-/lru-cache-2.6.4.tgz";
      name = "lru-cache-2.6.4.tgz";
      sha1 = "2675190ccd1b0701ec2f652a4d0d3d400d76c0dd";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lru-cache"."~2.3.0" =
    self.by-version."lru-cache"."2.3.1";
  by-version."lru-cache"."2.3.1" = self.buildNodePackage {
    name = "lru-cache-2.3.1";
    version = "2.3.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lru-cache/-/lru-cache-2.3.1.tgz";
      name = "lru-cache-2.3.1.tgz";
      sha1 = "b3adf6b3d856e954e2c390e6cef22081245a53d6";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lru-cache"."~2.5.0" =
    self.by-version."lru-cache"."2.5.2";
  by-version."lru-cache"."2.5.2" = self.buildNodePackage {
    name = "lru-cache-2.5.2";
    version = "2.5.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lru-cache/-/lru-cache-2.5.2.tgz";
      name = "lru-cache-2.5.2.tgz";
      sha1 = "1fddad938aae1263ce138680be1b3f591c0ab41c";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lru-queue"."0.1" =
    self.by-version."lru-queue"."0.1.0";
  by-version."lru-queue"."0.1.0" = self.buildNodePackage {
    name = "lru-queue-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/lru-queue/-/lru-queue-0.1.0.tgz";
      name = "lru-queue-0.1.0.tgz";
      sha1 = "2738bd9f0d3cf4f84490c5736c48699ac632cda3";
    };
    deps = {
      "es5-ext-0.10.7" = self.by-version."es5-ext"."0.10.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."magnet-uri"."^2.0.1" =
    self.by-version."magnet-uri"."2.0.1";
  by-version."magnet-uri"."2.0.1" = self.buildNodePackage {
    name = "magnet-uri-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/magnet-uri/-/magnet-uri-2.0.1.tgz";
      name = "magnet-uri-2.0.1.tgz";
      sha1 = "d331d3dfcd3836565ade0fc3ca315e39217bb209";
    };
    deps = {
      "thirty-two-0.0.2" = self.by-version."thirty-two"."0.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."magnet-uri"."^4.0.0" =
    self.by-version."magnet-uri"."4.2.3";
  by-version."magnet-uri"."4.2.3" = self.buildNodePackage {
    name = "magnet-uri-4.2.3";
    version = "4.2.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/magnet-uri/-/magnet-uri-4.2.3.tgz";
      name = "magnet-uri-4.2.3.tgz";
      sha1 = "79cc6d65a00bb5b7ef5c25ae60ebbb5d9a7681a8";
    };
    deps = {
      "flatten-0.0.1" = self.by-version."flatten"."0.0.1";
      "thirty-two-0.0.2" = self.by-version."thirty-two"."0.0.2";
      "xtend-4.0.0" = self.by-version."xtend"."4.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."magnet-uri"."~2.0.0" =
    self.by-version."magnet-uri"."2.0.1";
  by-spec."match-stream".">= 0.0.2 < 1" =
    self.by-version."match-stream"."0.0.2";
  by-version."match-stream"."0.0.2" = self.buildNodePackage {
    name = "match-stream-0.0.2";
    version = "0.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/match-stream/-/match-stream-0.0.2.tgz";
      name = "match-stream-0.0.2.tgz";
      sha1 = "99eb050093b34dffade421b9ac0b410a9cfa17cf";
    };
    deps = {
      "buffers-0.1.1" = self.by-version."buffers"."0.1.1";
      "readable-stream-1.0.33" = self.by-version."readable-stream"."1.0.33";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mdns-js"."*" =
    self.by-version."mdns-js"."0.3.1";
  by-version."mdns-js"."0.3.1" = self.buildNodePackage {
    name = "mdns-js-0.3.1";
    version = "0.3.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/mdns-js/-/mdns-js-0.3.1.tgz";
      name = "mdns-js-0.3.1.tgz";
      sha1 = "a2bcf301d23f271a9432505fff22103352510ae3";
    };
    deps = {
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "mdns-js-packet-0.1.10" = self.by-version."mdns-js-packet"."0.1.10";
      "semver-4.3.6" = self.by-version."semver"."4.3.6";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mdns-js"."0.3.1" =
    self.by-version."mdns-js"."0.3.1";
  by-spec."mdns-js-packet"."0.1.x" =
    self.by-version."mdns-js-packet"."0.1.10";
  by-version."mdns-js-packet"."0.1.10" = self.buildNodePackage {
    name = "mdns-js-packet-0.1.10";
    version = "0.1.10";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/mdns-js-packet/-/mdns-js-packet-0.1.10.tgz";
      name = "mdns-js-packet-0.1.10.tgz";
      sha1 = "6cd148cb0179b3b54f254a4ad9804471b1f2b4b9";
    };
    deps = {
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "qap-3.1.3" = self.by-version."qap"."3.1.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."memoizee"."^0.3.7" =
    self.by-version."memoizee"."0.3.8";
  by-version."memoizee"."0.3.8" = self.buildNodePackage {
    name = "memoizee-0.3.8";
    version = "0.3.8";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/memoizee/-/memoizee-0.3.8.tgz";
      name = "memoizee-0.3.8.tgz";
      sha1 = "b5faf419f02fafe3c2cc1cf5d3907c210fc7efdc";
    };
    deps = {
      "d-0.1.1" = self.by-version."d"."0.1.1";
      "es5-ext-0.10.7" = self.by-version."es5-ext"."0.10.7";
      "es6-weak-map-0.1.4" = self.by-version."es6-weak-map"."0.1.4";
      "event-emitter-0.3.3" = self.by-version."event-emitter"."0.3.3";
      "lru-queue-0.1.0" = self.by-version."lru-queue"."0.1.0";
      "next-tick-0.2.2" = self.by-version."next-tick"."0.2.2";
      "timers-ext-0.1.0" = self.by-version."timers-ext"."0.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "memoizee" = self.by-version."memoizee"."0.3.8";
  by-spec."memoizee"."~0.2.5" =
    self.by-version."memoizee"."0.2.6";
  by-version."memoizee"."0.2.6" = self.buildNodePackage {
    name = "memoizee-0.2.6";
    version = "0.2.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/memoizee/-/memoizee-0.2.6.tgz";
      name = "memoizee-0.2.6.tgz";
      sha1 = "bb45a7ad02530082f1612671dab35219cd2e0741";
    };
    deps = {
      "es5-ext-0.9.2" = self.by-version."es5-ext"."0.9.2";
      "event-emitter-0.2.2" = self.by-version."event-emitter"."0.2.2";
      "next-tick-0.1.0" = self.by-version."next-tick"."0.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."memoizee"."~0.3.8" =
    self.by-version."memoizee"."0.3.8";
  by-spec."mime"."1.2.11" =
    self.by-version."mime"."1.2.11";
  by-version."mime"."1.2.11" = self.buildNodePackage {
    name = "mime-1.2.11";
    version = "1.2.11";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/mime/-/mime-1.2.11.tgz";
      name = "mime-1.2.11.tgz";
      sha1 = "58203eed86e3a5ef17aed2b7d9ebd47f0a60dd10";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "mime" = self.by-version."mime"."1.2.11";
  by-spec."mime"."^1.2.11" =
    self.by-version."mime"."1.3.4";
  by-version."mime"."1.3.4" = self.buildNodePackage {
    name = "mime-1.3.4";
    version = "1.3.4";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/mime/-/mime-1.3.4.tgz";
      name = "mime-1.3.4.tgz";
      sha1 = "115f9e3b6b3daf2959983cb38f149a2d40eb5d53";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mime"."~1.2.11" =
    self.by-version."mime"."1.2.11";
  by-spec."mime"."~1.2.2" =
    self.by-version."mime"."1.2.11";
  by-spec."mime"."~1.2.7" =
    self.by-version."mime"."1.2.11";
  by-spec."mime"."~1.2.9" =
    self.by-version."mime"."1.2.11";
  by-spec."mime-db"."~1.12.0" =
    self.by-version."mime-db"."1.12.0";
  by-version."mime-db"."1.12.0" = self.buildNodePackage {
    name = "mime-db-1.12.0";
    version = "1.12.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/mime-db/-/mime-db-1.12.0.tgz";
      name = "mime-db-1.12.0.tgz";
      sha1 = "3d0c63180f458eb10d325aaa37d7c58ae312e9d7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mime-types"."~1.0.1" =
    self.by-version."mime-types"."1.0.2";
  by-version."mime-types"."1.0.2" = self.buildNodePackage {
    name = "mime-types-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/mime-types/-/mime-types-1.0.2.tgz";
      name = "mime-types-1.0.2.tgz";
      sha1 = "995ae1392ab8affcbfcb2641dd054e943c0d5dce";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mime-types"."~2.0.1" =
    self.by-version."mime-types"."2.0.14";
  by-version."mime-types"."2.0.14" = self.buildNodePackage {
    name = "mime-types-2.0.14";
    version = "2.0.14";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/mime-types/-/mime-types-2.0.14.tgz";
      name = "mime-types-2.0.14.tgz";
      sha1 = "310e159db23e077f8bb22b748dabfa4957140aa6";
    };
    deps = {
      "mime-db-1.12.0" = self.by-version."mime-db"."1.12.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mime-types"."~2.0.3" =
    self.by-version."mime-types"."2.0.14";
  by-spec."minimatch"."0" =
    self.by-version."minimatch"."0.4.0";
  by-version."minimatch"."0.4.0" = self.buildNodePackage {
    name = "minimatch-0.4.0";
    version = "0.4.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/minimatch/-/minimatch-0.4.0.tgz";
      name = "minimatch-0.4.0.tgz";
      sha1 = "bd2c7d060d2c8c8fd7cde7f1f2ed2d5b270fdb1b";
    };
    deps = {
      "lru-cache-2.6.4" = self.by-version."lru-cache"."2.6.4";
      "sigmund-1.0.1" = self.by-version."sigmund"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."minimatch"."0.3" =
    self.by-version."minimatch"."0.3.0";
  by-version."minimatch"."0.3.0" = self.buildNodePackage {
    name = "minimatch-0.3.0";
    version = "0.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/minimatch/-/minimatch-0.3.0.tgz";
      name = "minimatch-0.3.0.tgz";
      sha1 = "275d8edaac4f1bb3326472089e7949c8394699dd";
    };
    deps = {
      "lru-cache-2.6.4" = self.by-version."lru-cache"."2.6.4";
      "sigmund-1.0.1" = self.by-version."sigmund"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."minimatch"."1.0.x" =
    self.by-version."minimatch"."1.0.0";
  by-version."minimatch"."1.0.0" = self.buildNodePackage {
    name = "minimatch-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/minimatch/-/minimatch-1.0.0.tgz";
      name = "minimatch-1.0.0.tgz";
      sha1 = "e0dd2120b49e1b724ce8d714c520822a9438576d";
    };
    deps = {
      "lru-cache-2.6.4" = self.by-version."lru-cache"."2.6.4";
      "sigmund-1.0.1" = self.by-version."sigmund"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."minimatch"."^0.3.0" =
    self.by-version."minimatch"."0.3.0";
  by-spec."minimatch"."^1.0.0" =
    self.by-version."minimatch"."1.0.0";
  by-spec."minimatch"."^2.0.1" =
    self.by-version."minimatch"."2.0.8";
  by-version."minimatch"."2.0.8" = self.buildNodePackage {
    name = "minimatch-2.0.8";
    version = "2.0.8";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/minimatch/-/minimatch-2.0.8.tgz";
      name = "minimatch-2.0.8.tgz";
      sha1 = "0bc20f6bf3570a698ef0ddff902063c6cabda6bf";
    };
    deps = {
      "brace-expansion-1.1.0" = self.by-version."brace-expansion"."1.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."minimatch"."~0.2.0" =
    self.by-version."minimatch"."0.2.14";
  by-version."minimatch"."0.2.14" = self.buildNodePackage {
    name = "minimatch-0.2.14";
    version = "0.2.14";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/minimatch/-/minimatch-0.2.14.tgz";
      name = "minimatch-0.2.14.tgz";
      sha1 = "c74e780574f63c6f9a090e90efbe6ef53a6a756a";
    };
    deps = {
      "lru-cache-2.6.4" = self.by-version."lru-cache"."2.6.4";
      "sigmund-1.0.1" = self.by-version."sigmund"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."minimatch"."~0.2.11" =
    self.by-version."minimatch"."0.2.14";
  by-spec."minimatch"."~0.2.12" =
    self.by-version."minimatch"."0.2.14";
  by-spec."minimatch"."~0.2.14" =
    self.by-version."minimatch"."0.2.14";
  by-spec."minimist"."0.0.8" =
    self.by-version."minimist"."0.0.8";
  by-version."minimist"."0.0.8" = self.buildNodePackage {
    name = "minimist-0.0.8";
    version = "0.0.8";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/minimist/-/minimist-0.0.8.tgz";
      name = "minimist-0.0.8.tgz";
      sha1 = "857fcabfc3397d2625b8228262e86aa7a011b05d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."minimist"."^1.1.0" =
    self.by-version."minimist"."1.1.1";
  by-version."minimist"."1.1.1" = self.buildNodePackage {
    name = "minimist-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/minimist/-/minimist-1.1.1.tgz";
      name = "minimist-1.1.1.tgz";
      sha1 = "1bc2bc71658cdca5712475684363615b0b4f695b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."minimist"."~0.0.1" =
    self.by-version."minimist"."0.0.10";
  by-version."minimist"."0.0.10" = self.buildNodePackage {
    name = "minimist-0.0.10";
    version = "0.0.10";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/minimist/-/minimist-0.0.10.tgz";
      name = "minimist-0.0.10.tgz";
      sha1 = "de3f98543dbf96082be48ad1a0c7cda836301dcf";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."minimist"."~0.0.7" =
    self.by-version."minimist"."0.0.10";
  by-spec."mkdirp"."*" =
    self.by-version."mkdirp"."0.5.1";
  by-version."mkdirp"."0.5.1" = self.buildNodePackage {
    name = "mkdirp-0.5.1";
    version = "0.5.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/mkdirp/-/mkdirp-0.5.1.tgz";
      name = "mkdirp-0.5.1.tgz";
      sha1 = "30057438eac6cf7f8c4767f38648d6697d75c903";
    };
    deps = {
      "minimist-0.0.8" = self.by-version."minimist"."0.0.8";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "mkdirp" = self.by-version."mkdirp"."0.5.1";
  by-spec."mkdirp"."0" =
    self.by-version."mkdirp"."0.5.1";
  by-spec."mkdirp"."0.0.x" =
    self.by-version."mkdirp"."0.0.7";
  by-version."mkdirp"."0.0.7" = self.buildNodePackage {
    name = "mkdirp-0.0.7";
    version = "0.0.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/mkdirp/-/mkdirp-0.0.7.tgz";
      name = "mkdirp-0.0.7.tgz";
      sha1 = "d89b4f0e4c3e5e5ca54235931675e094fe1a5072";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mkdirp"."0.3.x" =
    self.by-version."mkdirp"."0.3.5";
  by-version."mkdirp"."0.3.5" = self.buildNodePackage {
    name = "mkdirp-0.3.5";
    version = "0.3.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/mkdirp/-/mkdirp-0.3.5.tgz";
      name = "mkdirp-0.3.5.tgz";
      sha1 = "de3e5f8961c88c787ee1368df849ac4413eca8d7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mkdirp"."0.5" =
    self.by-version."mkdirp"."0.5.1";
  by-spec."mkdirp"."0.5.0" =
    self.by-version."mkdirp"."0.5.0";
  by-version."mkdirp"."0.5.0" = self.buildNodePackage {
    name = "mkdirp-0.5.0";
    version = "0.5.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/mkdirp/-/mkdirp-0.5.0.tgz";
      name = "mkdirp-0.5.0.tgz";
      sha1 = "1d73076a6df986cd9344e15e71fcc05a4c9abf12";
    };
    deps = {
      "minimist-0.0.8" = self.by-version."minimist"."0.0.8";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mkdirp".">=0.5 0" =
    self.by-version."mkdirp"."0.5.1";
  by-spec."mkdirp"."^0.3.5" =
    self.by-version."mkdirp"."0.3.5";
  by-spec."mkdirp"."^0.5.0" =
    self.by-version."mkdirp"."0.5.1";
  by-spec."mkdirp"."~0.3.5" =
    self.by-version."mkdirp"."0.3.5";
  by-spec."mkdirp"."~0.5.0" =
    self.by-version."mkdirp"."0.5.1";
  by-spec."mkpath"."~0.1.0" =
    self.by-version."mkpath"."0.1.0";
  by-version."mkpath"."0.1.0" = self.buildNodePackage {
    name = "mkpath-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/mkpath/-/mkpath-0.1.0.tgz";
      name = "mkpath-0.1.0.tgz";
      sha1 = "7554a6f8d871834cc97b5462b122c4c124d6de91";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."moment"."^2.6.0" =
    self.by-version."moment"."2.10.3";
  by-version."moment"."2.10.3" = self.buildNodePackage {
    name = "moment-2.10.3";
    version = "2.10.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/moment/-/moment-2.10.3.tgz";
      name = "moment-2.10.3.tgz";
      sha1 = "0abb99f307f65218308c6935efe29c57b1a0a27f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "moment" = self.by-version."moment"."2.10.3";
  by-spec."mout"."~0.9.0" =
    self.by-version."mout"."0.9.1";
  by-version."mout"."0.9.1" = self.buildNodePackage {
    name = "mout-0.9.1";
    version = "0.9.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/mout/-/mout-0.9.1.tgz";
      name = "mout-0.9.1.tgz";
      sha1 = "84f0f3fd6acc7317f63de2affdcc0cee009b0477";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mout"."~0.9.1" =
    self.by-version."mout"."0.9.1";
  by-spec."ms"."0.6.2" =
    self.by-version."ms"."0.6.2";
  by-version."ms"."0.6.2" = self.buildNodePackage {
    name = "ms-0.6.2";
    version = "0.6.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ms/-/ms-0.6.2.tgz";
      name = "ms-0.6.2.tgz";
      sha1 = "d89c2124c6fdc1353d65a8b77bf1aac4b193708c";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ms"."0.7.1" =
    self.by-version."ms"."0.7.1";
  by-version."ms"."0.7.1" = self.buildNodePackage {
    name = "ms-0.7.1";
    version = "0.7.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/ms/-/ms-0.7.1.tgz";
      name = "ms-0.7.1.tgz";
      sha1 = "9cd13c03adbff25b65effde7ce864ee952017098";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."multimatch"."^0.1.0" =
    self.by-version."multimatch"."0.1.0";
  by-version."multimatch"."0.1.0" = self.buildNodePackage {
    name = "multimatch-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/multimatch/-/multimatch-0.1.0.tgz";
      name = "multimatch-0.1.0.tgz";
      sha1 = "099d9f8f8463ac36cfbfa27360bc16cee87ded64";
    };
    deps = {
      "lodash-2.4.2" = self.by-version."lodash"."2.4.2";
      "minimatch-0.2.14" = self.by-version."minimatch"."0.2.14";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mustache"."*" =
    self.by-version."mustache"."2.1.0";
  by-version."mustache"."2.1.0" = self.buildNodePackage {
    name = "mustache-2.1.0";
    version = "2.1.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/mustache/-/mustache-2.1.0.tgz";
      name = "mustache-2.1.0.tgz";
      sha1 = "00ae3d7757c68e4c997485c6728947e77f354b26";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mute-stream"."0.0.4" =
    self.by-version."mute-stream"."0.0.4";
  by-version."mute-stream"."0.0.4" = self.buildNodePackage {
    name = "mute-stream-0.0.4";
    version = "0.0.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/mute-stream/-/mute-stream-0.0.4.tgz";
      name = "mute-stream-0.0.4.tgz";
      sha1 = "a9219960a6d5d5d046597aee51252c6655f7177e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mute-stream"."~0.0.4" =
    self.by-version."mute-stream"."0.0.5";
  by-version."mute-stream"."0.0.5" = self.buildNodePackage {
    name = "mute-stream-0.0.5";
    version = "0.0.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/mute-stream/-/mute-stream-0.0.5.tgz";
      name = "mute-stream-0.0.5.tgz";
      sha1 = "8fbfabb0a98a253d3184331f9e8deb7372fac6c0";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mv"."^2.0.3" =
    self.by-version."mv"."2.0.3";
  by-version."mv"."2.0.3" = self.buildNodePackage {
    name = "mv-2.0.3";
    version = "2.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/mv/-/mv-2.0.3.tgz";
      name = "mv-2.0.3.tgz";
      sha1 = "e9ab707d71dc38de24edcc637a8e2f5f480c7f32";
    };
    deps = {
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "ncp-0.6.0" = self.by-version."ncp"."0.6.0";
      "rimraf-2.2.8" = self.by-version."rimraf"."2.2.8";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "mv" = self.by-version."mv"."2.0.3";
  by-spec."mv"."~2" =
    self.by-version."mv"."2.0.3";
  by-spec."nan"."~1.5.1" =
    self.by-version."nan"."1.5.3";
  by-version."nan"."1.5.3" = self.buildNodePackage {
    name = "nan-1.5.3";
    version = "1.5.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/nan/-/nan-1.5.3.tgz";
      name = "nan-1.5.3.tgz";
      sha1 = "4cd0ecc133b7b0700a492a646add427ae8a318eb";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."native-dns"."^0.7.0" =
    self.by-version."native-dns"."0.7.0";
  by-version."native-dns"."0.7.0" = self.buildNodePackage {
    name = "native-dns-0.7.0";
    version = "0.7.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/native-dns/-/native-dns-0.7.0.tgz";
      name = "native-dns-0.7.0.tgz";
      sha1 = "df418636f08fb29e8fcb7ef142c822a1588ba5b7";
    };
    deps = {
      "ipaddr.js-0.1.9" = self.by-version."ipaddr.js"."0.1.9";
      "native-dns-cache-0.0.2" = self.by-version."native-dns-cache"."0.0.2";
      "native-dns-packet-0.1.1" = self.by-version."native-dns-packet"."0.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "native-dns" = self.by-version."native-dns"."0.7.0";
  by-spec."native-dns-cache"."~0.0.2" =
    self.by-version."native-dns-cache"."0.0.2";
  by-version."native-dns-cache"."0.0.2" = self.buildNodePackage {
    name = "native-dns-cache-0.0.2";
    version = "0.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/native-dns-cache/-/native-dns-cache-0.0.2.tgz";
      name = "native-dns-cache-0.0.2.tgz";
      sha1 = "ce0998f7fdf6c7990970a33190624b0e98ee959b";
    };
    deps = {
      "binaryheap-0.0.3" = self.by-version."binaryheap"."0.0.3";
      "native-dns-packet-0.1.1" = self.by-version."native-dns-packet"."0.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."native-dns-packet".">= 0.0.1" =
    self.by-version."native-dns-packet"."0.1.1";
  by-version."native-dns-packet"."0.1.1" = self.buildNodePackage {
    name = "native-dns-packet-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/native-dns-packet/-/native-dns-packet-0.1.1.tgz";
      name = "native-dns-packet-0.1.1.tgz";
      sha1 = "97da90570b8438a00194701ce24d011fd3cc109a";
    };
    deps = {
      "buffercursor-0.0.12" = self.by-version."buffercursor"."0.0.12";
      "ipaddr.js-1.0.1" = self.by-version."ipaddr.js"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."native-dns-packet"."~0.1.1" =
    self.by-version."native-dns-packet"."0.1.1";
  by-spec."ncp"."~0.6.0" =
    self.by-version."ncp"."0.6.0";
  by-version."ncp"."0.6.0" = self.buildNodePackage {
    name = "ncp-0.6.0";
    version = "0.6.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/ncp/-/ncp-0.6.0.tgz";
      name = "ncp-0.6.0.tgz";
      sha1 = "df8ce021e262be21b52feb3d3e5cfaab12491f0d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."nedb"."0.10.11" =
    self.by-version."nedb"."0.10.11";
  by-version."nedb"."0.10.11" = self.buildNodePackage {
    name = "nedb-0.10.11";
    version = "0.10.11";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/nedb/-/nedb-0.10.11.tgz";
      name = "nedb-0.10.11.tgz";
      sha1 = "963ac8bef2993e132f9da5dbaa859c0034b23f97";
    };
    deps = {
      "async-0.2.10" = self.by-version."async"."0.2.10";
      "underscore-1.4.4" = self.by-version."underscore"."1.4.4";
      "binary-search-tree-0.2.4" = self.by-version."binary-search-tree"."0.2.4";
      "mkdirp-0.3.5" = self.by-version."mkdirp"."0.3.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "nedb" = self.by-version."nedb"."0.10.11";
  by-spec."nested-error-stacks"."^1.0.0" =
    self.by-version."nested-error-stacks"."1.0.0";
  by-version."nested-error-stacks"."1.0.0" = self.buildNodePackage {
    name = "nested-error-stacks-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/nested-error-stacks/-/nested-error-stacks-1.0.0.tgz";
      name = "nested-error-stacks-1.0.0.tgz";
      sha1 = "3bd2785bb1fa9ebbf608e293e9ccb9ea765254c7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."network-address"."0.0.5" =
    self.by-version."network-address"."0.0.5";
  by-version."network-address"."0.0.5" = self.buildNodePackage {
    name = "network-address-0.0.5";
    version = "0.0.5";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/network-address/-/network-address-0.0.5.tgz";
      name = "network-address-0.0.5.tgz";
      sha1 = "a400225438cacb67cd6108e8e826d5920a705dcc";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."network-address"."^1.0.0" =
    self.by-version."network-address"."1.0.0";
  by-version."network-address"."1.0.0" = self.buildNodePackage {
    name = "network-address-1.0.0";
    version = "1.0.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/network-address/-/network-address-1.0.0.tgz";
      name = "network-address-1.0.0.tgz";
      sha1 = "246e82910c9e49d8842f1515d8341973a8db642f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."next-tick"."0.1.x" =
    self.by-version."next-tick"."0.1.0";
  by-version."next-tick"."0.1.0" = self.buildNodePackage {
    name = "next-tick-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/next-tick/-/next-tick-0.1.0.tgz";
      name = "next-tick-0.1.0.tgz";
      sha1 = "1912cce8eb9b697d640fbba94f8f00dec3b94259";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."next-tick"."~0.2.2" =
    self.by-version."next-tick"."0.2.2";
  by-version."next-tick"."0.2.2" = self.buildNodePackage {
    name = "next-tick-0.2.2";
    version = "0.2.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/next-tick/-/next-tick-0.2.2.tgz";
      name = "next-tick-0.2.2.tgz";
      sha1 = "75da4a927ee5887e39065880065b7336413b310d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."nib"."~1.0.1" =
    self.by-version."nib"."1.0.4";
  by-version."nib"."1.0.4" = self.buildNodePackage {
    name = "nib-1.0.4";
    version = "1.0.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/nib/-/nib-1.0.4.tgz";
      name = "nib-1.0.4.tgz";
      sha1 = "03d397c27a231f3c9a5a190eaa68e5d79e2f0345";
    };
    deps = {
      "stylus-0.45.1" = self.by-version."stylus"."0.45.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."node-captions"."0.2.2" =
    self.by-version."node-captions"."0.2.2";
  by-version."node-captions"."0.2.2" = self.buildNodePackage {
    name = "node-captions-0.2.2";
    version = "0.2.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/node-captions/-/node-captions-0.2.2.tgz";
      name = "node-captions-0.2.2.tgz";
      sha1 = "49001ac58f6dd515102e50cc2c5ae0b6d3397d4c";
    };
    deps = {
      "iconv-lite-0.4.10" = self.by-version."iconv-lite"."0.4.10";
      "moment-2.10.3" = self.by-version."moment"."2.10.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "node-captions" = self.by-version."node-captions"."0.2.2";
  by-spec."node-ssdp"."^2.0.1" =
    self.by-version."node-ssdp"."2.2.1";
  by-version."node-ssdp"."2.2.1" = self.buildNodePackage {
    name = "node-ssdp-2.2.1";
    version = "2.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/node-ssdp/-/node-ssdp-2.2.1.tgz";
      name = "node-ssdp-2.2.1.tgz";
      sha1 = "3236d64824e407e6a31e5167c8f4baa7fb0aad72";
    };
    deps = {
      "ip-0.3.3" = self.by-version."ip"."0.3.3";
    };
    optionalDependencies = {
      "bunyan-prettystream-0.1.3" = self.by-version."bunyan-prettystream"."0.1.3";
      "bunyan-1.3.6" = self.by-version."bunyan"."1.3.6";
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."node-tracker"."*" =
    self.by-version."node-tracker"."0.0.6";
  by-version."node-tracker"."0.0.6" = self.buildNodePackage {
    name = "node-tracker-0.0.6";
    version = "0.0.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/node-tracker/-/node-tracker-0.0.6.tgz";
      name = "node-tracker-0.0.6.tgz";
      sha1 = "bddf8160e00e372ca254648d098ac591fc2d8b02";
    };
    deps = {
      "URIjs-1.15.1" = self.by-version."URIjs"."1.15.1";
      "bencode-0.6.0" = self.by-version."bencode"."0.6.0";
      "compact2string-1.4.0" = self.by-version."compact2string"."1.4.0";
      "hat-0.0.3" = self.by-version."hat"."0.0.3";
      "request-2.57.0" = self.by-version."request"."2.57.0";
      "underscore-1.8.3" = self.by-version."underscore"."1.8.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."node-uuid"."~1.4.0" =
    self.by-version."node-uuid"."1.4.3";
  by-version."node-uuid"."1.4.3" = self.buildNodePackage {
    name = "node-uuid-1.4.3";
    version = "1.4.3";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/node-uuid/-/node-uuid-1.4.3.tgz";
      name = "node-uuid-1.4.3.tgz";
      sha1 = "319bb7a56e7cb63f00b5c0cd7851cd4b4ddf1df9";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."node-webkit-fdialogs"."*" =
    self.by-version."node-webkit-fdialogs"."0.2.7";
  by-version."node-webkit-fdialogs"."0.2.7" = self.buildNodePackage {
    name = "node-webkit-fdialogs-0.2.7";
    version = "0.2.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/node-webkit-fdialogs/-/node-webkit-fdialogs-0.2.7.tgz";
      name = "node-webkit-fdialogs-0.2.7.tgz";
      sha1 = "3b9901891e13ab2a1e2be2633d413d3d95f5ebbb";
    };
    deps = {
      "underscore-1.8.3" = self.by-version."underscore"."1.8.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "node-webkit-fdialogs" = self.by-version."node-webkit-fdialogs"."0.2.7";
  by-spec."nopt"."2" =
    self.by-version."nopt"."2.2.1";
  by-version."nopt"."2.2.1" = self.buildNodePackage {
    name = "nopt-2.2.1";
    version = "2.2.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/nopt/-/nopt-2.2.1.tgz";
      name = "nopt-2.2.1.tgz";
      sha1 = "2aa09b7d1768487b3b89a9c5aa52335bff0baea7";
    };
    deps = {
      "abbrev-1.0.7" = self.by-version."abbrev"."1.0.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."nopt"."~1.0.10" =
    self.by-version."nopt"."1.0.10";
  by-version."nopt"."1.0.10" = self.buildNodePackage {
    name = "nopt-1.0.10";
    version = "1.0.10";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/nopt/-/nopt-1.0.10.tgz";
      name = "nopt-1.0.10.tgz";
      sha1 = "6ddd21bd2a31417b92727dd585f8a6f37608ebee";
    };
    deps = {
      "abbrev-1.0.7" = self.by-version."abbrev"."1.0.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."nopt"."~2.0.0" =
    self.by-version."nopt"."2.0.0";
  by-version."nopt"."2.0.0" = self.buildNodePackage {
    name = "nopt-2.0.0";
    version = "2.0.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/nopt/-/nopt-2.0.0.tgz";
      name = "nopt-2.0.0.tgz";
      sha1 = "ca7416f20a5e3f9c3b86180f96295fa3d0b52e0d";
    };
    deps = {
      "abbrev-1.0.7" = self.by-version."abbrev"."1.0.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."nopt"."~2.2.0" =
    self.by-version."nopt"."2.2.1";
  by-spec."nopt"."~3.0.0" =
    self.by-version."nopt"."3.0.2";
  by-version."nopt"."3.0.2" = self.buildNodePackage {
    name = "nopt-3.0.2";
    version = "3.0.2";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/nopt/-/nopt-3.0.2.tgz";
      name = "nopt-3.0.2.tgz";
      sha1 = "a82a87f9d8c3df140fe78fb29657a7a774403b5e";
    };
    deps = {
      "abbrev-1.0.7" = self.by-version."abbrev"."1.0.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."nopt"."~3.0.1" =
    self.by-version."nopt"."3.0.2";
  by-spec."noptify"."~0.0.3" =
    self.by-version."noptify"."0.0.3";
  by-version."noptify"."0.0.3" = self.buildNodePackage {
    name = "noptify-0.0.3";
    version = "0.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/noptify/-/noptify-0.0.3.tgz";
      name = "noptify-0.0.3.tgz";
      sha1 = "58f654a73d9753df0c51d9686dc92104a67f4bbb";
    };
    deps = {
      "nopt-2.0.0" = self.by-version."nopt"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."npmconf"."^2.0.1" =
    self.by-version."npmconf"."2.1.2";
  by-version."npmconf"."2.1.2" = self.buildNodePackage {
    name = "npmconf-2.1.2";
    version = "2.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/npmconf/-/npmconf-2.1.2.tgz";
      name = "npmconf-2.1.2.tgz";
      sha1 = "66606a4a736f1e77a059aa071a79c94ab781853a";
    };
    deps = {
      "config-chain-1.1.9" = self.by-version."config-chain"."1.1.9";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
      "ini-1.3.4" = self.by-version."ini"."1.3.4";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "nopt-3.0.2" = self.by-version."nopt"."3.0.2";
      "once-1.3.2" = self.by-version."once"."1.3.2";
      "osenv-0.1.1" = self.by-version."osenv"."0.1.1";
      "semver-4.3.6" = self.by-version."semver"."4.3.6";
      "uid-number-0.0.5" = self.by-version."uid-number"."0.0.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."npmlog"."0" =
    self.by-version."npmlog"."0.1.1";
  by-version."npmlog"."0.1.1" = self.buildNodePackage {
    name = "npmlog-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/npmlog/-/npmlog-0.1.1.tgz";
      name = "npmlog-0.1.1.tgz";
      sha1 = "8b9b9e4405d7ec48c31c2346965aadc7abaecaa5";
    };
    deps = {
      "ansi-0.3.0" = self.by-version."ansi"."0.3.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."numeral"."^1.5.3" =
    self.by-version."numeral"."1.5.3";
  by-version."numeral"."1.5.3" = self.buildNodePackage {
    name = "numeral-1.5.3";
    version = "1.5.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/numeral/-/numeral-1.5.3.tgz";
      name = "numeral-1.5.3.tgz";
      sha1 = "a4c3eba68239580509f818267c77243bce43ff62";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."nw-gyp"."^0.12.2" =
    self.by-version."nw-gyp"."0.12.4";
  by-version."nw-gyp"."0.12.4" = self.buildNodePackage {
    name = "nw-gyp-0.12.4";
    version = "0.12.4";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/nw-gyp/-/nw-gyp-0.12.4.tgz";
      name = "nw-gyp-0.12.4.tgz";
      sha1 = "9cf479127b3f500cd8070f5a0e5138e1b1fe9f90";
    };
    deps = {
      "glob-3.2.11" = self.by-version."glob"."3.2.11";
      "graceful-fs-2.0.3" = self.by-version."graceful-fs"."2.0.3";
      "fstream-0.1.31" = self.by-version."fstream"."0.1.31";
      "minimatch-0.4.0" = self.by-version."minimatch"."0.4.0";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "nopt-2.2.1" = self.by-version."nopt"."2.2.1";
      "npmlog-0.1.1" = self.by-version."npmlog"."0.1.1";
      "osenv-0.1.1" = self.by-version."osenv"."0.1.1";
      "request-2.57.0" = self.by-version."request"."2.57.0";
      "rimraf-2.4.0" = self.by-version."rimraf"."2.4.0";
      "semver-2.2.1" = self.by-version."semver"."2.2.1";
      "tar-0.1.20" = self.by-version."tar"."0.1.20";
      "which-1.1.1" = self.by-version."which"."1.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "nw-gyp" = self.by-version."nw-gyp"."0.12.4";
  by-spec."oauth-sign"."~0.2.0" =
    self.by-version."oauth-sign"."0.2.0";
  by-version."oauth-sign"."0.2.0" = self.buildNodePackage {
    name = "oauth-sign-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/oauth-sign/-/oauth-sign-0.2.0.tgz";
      name = "oauth-sign-0.2.0.tgz";
      sha1 = "a0e6a1715daed062f322b622b7fe5afd1035b6e2";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."oauth-sign"."~0.3.0" =
    self.by-version."oauth-sign"."0.3.0";
  by-version."oauth-sign"."0.3.0" = self.buildNodePackage {
    name = "oauth-sign-0.3.0";
    version = "0.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/oauth-sign/-/oauth-sign-0.3.0.tgz";
      name = "oauth-sign-0.3.0.tgz";
      sha1 = "cb540f93bb2b22a7d5941691a288d60e8ea9386e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."oauth-sign"."~0.4.0" =
    self.by-version."oauth-sign"."0.4.0";
  by-version."oauth-sign"."0.4.0" = self.buildNodePackage {
    name = "oauth-sign-0.4.0";
    version = "0.4.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/oauth-sign/-/oauth-sign-0.4.0.tgz";
      name = "oauth-sign-0.4.0.tgz";
      sha1 = "f22956f31ea7151a821e5f2fb32c113cad8b9f69";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."oauth-sign"."~0.5.0" =
    self.by-version."oauth-sign"."0.5.0";
  by-version."oauth-sign"."0.5.0" = self.buildNodePackage {
    name = "oauth-sign-0.5.0";
    version = "0.5.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/oauth-sign/-/oauth-sign-0.5.0.tgz";
      name = "oauth-sign-0.5.0.tgz";
      sha1 = "d767f5169325620eab2e087ef0c472e773db6461";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."oauth-sign"."~0.8.0" =
    self.by-version."oauth-sign"."0.8.0";
  by-version."oauth-sign"."0.8.0" = self.buildNodePackage {
    name = "oauth-sign-0.8.0";
    version = "0.8.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/oauth-sign/-/oauth-sign-0.8.0.tgz";
      name = "oauth-sign-0.8.0.tgz";
      sha1 = "938fdc875765ba527137d8aec9d178e24debc553";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."object-assign"."^0.3.0" =
    self.by-version."object-assign"."0.3.1";
  by-version."object-assign"."0.3.1" = self.buildNodePackage {
    name = "object-assign-0.3.1";
    version = "0.3.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/object-assign/-/object-assign-0.3.1.tgz";
      name = "object-assign-0.3.1.tgz";
      sha1 = "060e2a2a27d7c0d77ec77b78f11aa47fd88008d2";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."object-assign"."^1.0.0" =
    self.by-version."object-assign"."1.0.0";
  by-version."object-assign"."1.0.0" = self.buildNodePackage {
    name = "object-assign-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/object-assign/-/object-assign-1.0.0.tgz";
      name = "object-assign-1.0.0.tgz";
      sha1 = "e65dc8766d3b47b4b8307465c8311da030b070a6";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."object-assign"."^2.0.0" =
    self.by-version."object-assign"."2.1.1";
  by-version."object-assign"."2.1.1" = self.buildNodePackage {
    name = "object-assign-2.1.1";
    version = "2.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/object-assign/-/object-assign-2.1.1.tgz";
      name = "object-assign-2.1.1.tgz";
      sha1 = "43c36e5d569ff8e4816c4efa8be02d26967c18aa";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."object-assign"."~0.1.1" =
    self.by-version."object-assign"."0.1.2";
  by-version."object-assign"."0.1.2" = self.buildNodePackage {
    name = "object-assign-0.1.2";
    version = "0.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/object-assign/-/object-assign-0.1.2.tgz";
      name = "object-assign-0.1.2.tgz";
      sha1 = "036992f073aff7b2db83d06b3fb3155a5ccac37f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."object-assign"."~0.1.2" =
    self.by-version."object-assign"."0.1.2";
  by-spec."once"."^1.1.1" =
    self.by-version."once"."1.3.2";
  by-version."once"."1.3.2" = self.buildNodePackage {
    name = "once-1.3.2";
    version = "1.3.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/once/-/once-1.3.2.tgz";
      name = "once-1.3.2.tgz";
      sha1 = "d8feeca93b039ec1dcdee7741c92bdac5e28081b";
    };
    deps = {
      "wrappy-1.0.1" = self.by-version."wrappy"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."once"."^1.3.0" =
    self.by-version."once"."1.3.2";
  by-spec."once"."^1.3.1" =
    self.by-version."once"."1.3.2";
  by-spec."once"."~1.2.0" =
    self.by-version."once"."1.2.0";
  by-version."once"."1.2.0" = self.buildNodePackage {
    name = "once-1.2.0";
    version = "1.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/once/-/once-1.2.0.tgz";
      name = "once-1.2.0.tgz";
      sha1 = "de1905c636af874a8fba862d9aabddd1f920461c";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."once"."~1.3.0" =
    self.by-version."once"."1.3.2";
  by-spec."open"."0.0.5" =
    self.by-version."open"."0.0.5";
  by-version."open"."0.0.5" = self.buildNodePackage {
    name = "open-0.0.5";
    version = "0.0.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/open/-/open-0.0.5.tgz";
      name = "open-0.0.5.tgz";
      sha1 = "42c3e18ec95466b6bf0dc42f3a2945c3f0cad8fc";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."opn"."~0.1.1" =
    self.by-version."opn"."0.1.2";
  by-version."opn"."0.1.2" = self.buildNodePackage {
    name = "opn-0.1.2";
    version = "0.1.2";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/opn/-/opn-0.1.2.tgz";
      name = "opn-0.1.2.tgz";
      sha1 = "c527832cfd964d52096b524d0035ecaece51db4f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."opn"."~1.0.0" =
    self.by-version."opn"."1.0.2";
  by-version."opn"."1.0.2" = self.buildNodePackage {
    name = "opn-1.0.2";
    version = "1.0.2";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/opn/-/opn-1.0.2.tgz";
      name = "opn-1.0.2.tgz";
      sha1 = "b909643346d00a1abc977a8b96f3ce3c53d5cf5f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."optimist"."^0.6.1" =
    self.by-version."optimist"."0.6.1";
  by-version."optimist"."0.6.1" = self.buildNodePackage {
    name = "optimist-0.6.1";
    version = "0.6.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/optimist/-/optimist-0.6.1.tgz";
      name = "optimist-0.6.1.tgz";
      sha1 = "da3ea74686fa21a19a111c326e90eb15a0196686";
    };
    deps = {
      "wordwrap-0.0.3" = self.by-version."wordwrap"."0.0.3";
      "minimist-0.0.10" = self.by-version."minimist"."0.0.10";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."optimist"."~0.3" =
    self.by-version."optimist"."0.3.7";
  by-version."optimist"."0.3.7" = self.buildNodePackage {
    name = "optimist-0.3.7";
    version = "0.3.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/optimist/-/optimist-0.3.7.tgz";
      name = "optimist-0.3.7.tgz";
      sha1 = "c90941ad59e4273328923074d2cf2e7cbc6ec0d9";
    };
    deps = {
      "wordwrap-0.0.3" = self.by-version."wordwrap"."0.0.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."optimist"."~0.3.5" =
    self.by-version."optimist"."0.3.7";
  by-spec."optimist"."~0.6.0" =
    self.by-version."optimist"."0.6.1";
  by-spec."optjs"."*" =
    self.by-version."optjs"."3.2.1-boom";
  by-version."optjs"."3.2.1-boom" = self.buildNodePackage {
    name = "optjs-3.2.1-boom";
    version = "3.2.1-boom";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/optjs/-/optjs-3.2.1-boom.tgz";
      name = "optjs-3.2.1-boom.tgz";
      sha1 = "bc0af6c8647db5eec511c4ca2d264f9646add758";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."os-name"."^1.0.0" =
    self.by-version."os-name"."1.0.3";
  by-version."os-name"."1.0.3" = self.buildNodePackage {
    name = "os-name-1.0.3";
    version = "1.0.3";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/os-name/-/os-name-1.0.3.tgz";
      name = "os-name-1.0.3.tgz";
      sha1 = "1b379f64835af7c5a7f498b357cb95215c159edf";
    };
    deps = {
      "osx-release-1.0.0" = self.by-version."osx-release"."1.0.0";
      "win-release-1.0.0" = self.by-version."win-release"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."os-tmpdir"."^1.0.0" =
    self.by-version."os-tmpdir"."1.0.1";
  by-version."os-tmpdir"."1.0.1" = self.buildNodePackage {
    name = "os-tmpdir-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/os-tmpdir/-/os-tmpdir-1.0.1.tgz";
      name = "os-tmpdir-1.0.1.tgz";
      sha1 = "e9b423a1edaf479882562e92ed71d7743a071b6e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."osenv"."0" =
    self.by-version."osenv"."0.1.1";
  by-version."osenv"."0.1.1" = self.buildNodePackage {
    name = "osenv-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/osenv/-/osenv-0.1.1.tgz";
      name = "osenv-0.1.1.tgz";
      sha1 = "ddc7c4bb86c64a3022e95f030ee028e9a5996c07";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."osenv"."0.0.3" =
    self.by-version."osenv"."0.0.3";
  by-version."osenv"."0.0.3" = self.buildNodePackage {
    name = "osenv-0.0.3";
    version = "0.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/osenv/-/osenv-0.0.3.tgz";
      name = "osenv-0.0.3.tgz";
      sha1 = "cd6ad8ddb290915ad9e22765576025d411f29cb6";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."osenv"."0.1.0" =
    self.by-version."osenv"."0.1.0";
  by-version."osenv"."0.1.0" = self.buildNodePackage {
    name = "osenv-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/osenv/-/osenv-0.1.0.tgz";
      name = "osenv-0.1.0.tgz";
      sha1 = "61668121eec584955030b9f470b1d2309504bfcb";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."osenv"."^0.1.0" =
    self.by-version."osenv"."0.1.1";
  by-spec."osenv"."~0.1.0" =
    self.by-version."osenv"."0.1.1";
  by-spec."osx-release"."^1.0.0" =
    self.by-version."osx-release"."1.0.0";
  by-version."osx-release"."1.0.0" = self.buildNodePackage {
    name = "osx-release-1.0.0";
    version = "1.0.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/osx-release/-/osx-release-1.0.0.tgz";
      name = "osx-release-1.0.0.tgz";
      sha1 = "02bee80f3b898aaa88922d2f86e178605974beac";
    };
    deps = {
      "minimist-1.1.1" = self.by-version."minimist"."1.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."over".">= 0.0.5 < 1" =
    self.by-version."over"."0.0.5";
  by-version."over"."0.0.5" = self.buildNodePackage {
    name = "over-0.0.5";
    version = "0.0.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/over/-/over-0.0.5.tgz";
      name = "over-0.0.5.tgz";
      sha1 = "f29852e70fd7e25f360e013a8ec44c82aedb5708";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."p-throttler"."0.1.0" =
    self.by-version."p-throttler"."0.1.0";
  by-version."p-throttler"."0.1.0" = self.buildNodePackage {
    name = "p-throttler-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/p-throttler/-/p-throttler-0.1.0.tgz";
      name = "p-throttler-0.1.0.tgz";
      sha1 = "1b16907942c333e6f1ddeabcb3479204b8c417c4";
    };
    deps = {
      "q-0.9.7" = self.by-version."q"."0.9.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."p-throttler"."~0.0.1" =
    self.by-version."p-throttler"."0.0.1";
  by-version."p-throttler"."0.0.1" = self.buildNodePackage {
    name = "p-throttler-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/p-throttler/-/p-throttler-0.0.1.tgz";
      name = "p-throttler-0.0.1.tgz";
      sha1 = "c341e3589ec843852a035e6f88e6c1e96150029b";
    };
    deps = {
      "q-0.9.7" = self.by-version."q"."0.9.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."package-json"."^0.2.0" =
    self.by-version."package-json"."0.2.0";
  by-version."package-json"."0.2.0" = self.buildNodePackage {
    name = "package-json-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/package-json/-/package-json-0.2.0.tgz";
      name = "package-json-0.2.0.tgz";
      sha1 = "0316e177b8eb149985d34f706b4a5543b274bec5";
    };
    deps = {
      "got-0.3.0" = self.by-version."got"."0.3.0";
      "registry-url-0.1.1" = self.by-version."registry-url"."0.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."package-json"."^1.0.0" =
    self.by-version."package-json"."1.2.0";
  by-version."package-json"."1.2.0" = self.buildNodePackage {
    name = "package-json-1.2.0";
    version = "1.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/package-json/-/package-json-1.2.0.tgz";
      name = "package-json-1.2.0.tgz";
      sha1 = "c8ecac094227cdf76a316874ed05e27cc939a0e0";
    };
    deps = {
      "got-3.2.0" = self.by-version."got"."3.2.0";
      "registry-url-3.0.3" = self.by-version."registry-url"."3.0.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."parse-torrent"."^4.0.0" =
    self.by-version."parse-torrent"."4.1.0";
  by-version."parse-torrent"."4.1.0" = self.buildNodePackage {
    name = "parse-torrent-4.1.0";
    version = "4.1.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/parse-torrent/-/parse-torrent-4.1.0.tgz";
      name = "parse-torrent-4.1.0.tgz";
      sha1 = "a814bd8505e8b58e88eb8ff3e2daff5d19a711b7";
    };
    deps = {
      "magnet-uri-4.2.3" = self.by-version."magnet-uri"."4.2.3";
      "parse-torrent-file-2.1.4" = self.by-version."parse-torrent-file"."2.1.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."parse-torrent"."~1.0.0" =
    self.by-version."parse-torrent"."1.0.0";
  by-version."parse-torrent"."1.0.0" = self.buildNodePackage {
    name = "parse-torrent-1.0.0";
    version = "1.0.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/parse-torrent/-/parse-torrent-1.0.0.tgz";
      name = "parse-torrent-1.0.0.tgz";
      sha1 = "5a47a038c5db161b7b67b0534636194e1c8907a2";
    };
    deps = {
      "bncode-0.5.3" = self.by-version."bncode"."0.5.3";
      "rusha-browserify-0.7.3" = self.by-version."rusha-browserify"."0.7.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."parse-torrent-file"."^2.0.0" =
    self.by-version."parse-torrent-file"."2.1.4";
  by-version."parse-torrent-file"."2.1.4" = self.buildNodePackage {
    name = "parse-torrent-file-2.1.4";
    version = "2.1.4";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/parse-torrent-file/-/parse-torrent-file-2.1.4.tgz";
      name = "parse-torrent-file-2.1.4.tgz";
      sha1 = "32d4b6afde631420e5f415919a222b774b575707";
    };
    deps = {
      "bencode-0.7.0" = self.by-version."bencode"."0.7.0";
      "simple-sha1-2.0.7" = self.by-version."simple-sha1"."2.0.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."peer-wire-protocol"."^0.7.0" =
    self.by-version."peer-wire-protocol"."0.7.0";
  by-version."peer-wire-protocol"."0.7.0" = self.buildNodePackage {
    name = "peer-wire-protocol-0.7.0";
    version = "0.7.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/peer-wire-protocol/-/peer-wire-protocol-0.7.0.tgz";
      name = "peer-wire-protocol-0.7.0.tgz";
      sha1 = "6c015abf24b4877ed9eca3822b22d996078011da";
    };
    deps = {
      "bitfield-0.1.0" = self.by-version."bitfield"."0.1.0";
      "readable-stream-1.1.13" = self.by-version."readable-stream"."1.1.13";
      "bncode-0.2.3" = self.by-version."bncode"."0.2.3";
      "speedometer-0.1.4" = self.by-version."speedometer"."0.1.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."peer-wire-swarm"."^0.9.2" =
    self.by-version."peer-wire-swarm"."0.9.2";
  by-version."peer-wire-swarm"."0.9.2" = self.buildNodePackage {
    name = "peer-wire-swarm-0.9.2";
    version = "0.9.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/peer-wire-swarm/-/peer-wire-swarm-0.9.2.tgz";
      name = "peer-wire-swarm-0.9.2.tgz";
      sha1 = "092848005607d8ca94e69f9bc9ebe52956ec3048";
    };
    deps = {
      "peer-wire-protocol-0.7.0" = self.by-version."peer-wire-protocol"."0.7.0";
      "fifo-0.1.4" = self.by-version."fifo"."0.1.4";
      "once-1.3.2" = self.by-version."once"."1.3.2";
      "speedometer-0.1.4" = self.by-version."speedometer"."0.1.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."peerflix"."git+https://git.popcorntime.io/mirrors/peerflix.git" =
    self.by-version."peerflix"."0.29.2";
  by-version."peerflix"."0.29.2" = self.buildNodePackage {
    name = "peerflix-0.29.2";
    version = "0.29.2";
    bin = true;
    src = fetchgit {
      url = "https://git.popcorntime.io/mirrors/peerflix.git";
      rev = "36edc58ce8997884f056a390e7fc48477824bcca";
      sha256 = "9dfb91489b0e2a01482f71abc511bb1595ffcff21edfff95882686ab43fa2c77";
    };
    deps = {
      "clivas-0.1.4" = self.by-version."clivas"."0.1.4";
      "inquirer-0.8.5" = self.by-version."inquirer"."0.8.5";
      "keypress-0.2.1" = self.by-version."keypress"."0.2.1";
      "mime-1.3.4" = self.by-version."mime"."1.3.4";
      "network-address-0.0.5" = self.by-version."network-address"."0.0.5";
      "numeral-1.5.3" = self.by-version."numeral"."1.5.3";
      "open-0.0.5" = self.by-version."open"."0.0.5";
      "optimist-0.6.1" = self.by-version."optimist"."0.6.1";
      "pump-0.3.5" = self.by-version."pump"."0.3.5";
      "range-parser-1.0.2" = self.by-version."range-parser"."1.0.2";
      "rc-0.4.0" = self.by-version."rc"."0.4.0";
      "read-torrent-1.3.0" = self.by-version."read-torrent"."1.3.0";
      "torrent-stream-0.18.1" = self.by-version."torrent-stream"."0.18.1";
      "windows-no-runnable-0.0.6" = self.by-version."windows-no-runnable"."0.0.6";
      "xtend-4.0.0" = self.by-version."xtend"."4.0.0";
    };
    optionalDependencies = {
      "airplay-js-0.2.15" = self.by-version."airplay-js"."0.2.15";
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "peerflix" = self.by-version."peerflix"."0.29.2";
  by-spec."plist"."~0.4.3" =
    self.by-version."plist"."0.4.3";
  by-version."plist"."0.4.3" = self.buildNodePackage {
    name = "plist-0.4.3";
    version = "0.4.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/plist/-/plist-0.4.3.tgz";
      name = "plist-0.4.3.tgz";
      sha1 = "812842a873aa57f98d0050bee6aaf3549b9d5798";
    };
    deps = {
      "xmlbuilder-0.4.3" = self.by-version."xmlbuilder"."0.4.3";
      "xmldom-0.1.19" = self.by-version."xmldom"."0.1.19";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."plist-with-patches"."0.5.1" =
    self.by-version."plist-with-patches"."0.5.1";
  by-version."plist-with-patches"."0.5.1" = self.buildNodePackage {
    name = "plist-with-patches-0.5.1";
    version = "0.5.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/plist-with-patches/-/plist-with-patches-0.5.1.tgz";
      name = "plist-with-patches-0.5.1.tgz";
      sha1 = "868aae2e0df8989b026562b35cbc19cfd8bb780d";
    };
    deps = {
      "xmlbuilder-0.4.3" = self.by-version."xmlbuilder"."0.4.3";
      "xmldom-0.1.19" = self.by-version."xmldom"."0.1.19";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."popcorn-opensubtitles"."git+https://git.popcorntime.io/popcorntime/opensubtitles.git#a7ad4445a2cc89e3f37d4fe4e6ac06186fd719ea" =
    self.by-version."popcorn-opensubtitles"."0.0.1";
  by-version."popcorn-opensubtitles"."0.0.1" = self.buildNodePackage {
    name = "popcorn-opensubtitles-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchgit {
      url = "https://git.popcorntime.io/popcorntime/opensubtitles.git";
      rev = "a7ad4445a2cc89e3f37d4fe4e6ac06186fd719ea";
      sha256 = "9f63e2a2b769c4b94230726320b1e4f72e8b305ad8db56a19046938243eeb417";
    };
    deps = {
      "q-1.0.1" = self.by-version."q"."1.0.1";
      "lodash-2.4.2" = self.by-version."lodash"."2.4.2";
      "xmlrpc-1.3.1" = self.by-version."xmlrpc"."1.3.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "popcorn-opensubtitles" = self.by-version."popcorn-opensubtitles"."0.0.1";
  by-spec."portfinder"."^0.3.0" =
    self.by-version."portfinder"."0.3.0";
  by-version."portfinder"."0.3.0" = self.buildNodePackage {
    name = "portfinder-0.3.0";
    version = "0.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/portfinder/-/portfinder-0.3.0.tgz";
      name = "portfinder-0.3.0.tgz";
      sha1 = "f9f2c96894440c5b5113b84e0ad1013042b7c2a0";
    };
    deps = {
      "mkdirp-0.0.7" = self.by-version."mkdirp"."0.0.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."prepend-http"."^1.0.0" =
    self.by-version."prepend-http"."1.0.1";
  by-version."prepend-http"."1.0.1" = self.buildNodePackage {
    name = "prepend-http-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/prepend-http/-/prepend-http-1.0.1.tgz";
      name = "prepend-http-1.0.1.tgz";
      sha1 = "5f13dad9a434fa4f346aa51cf03f3cea15fe4eb3";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."prettysize"."~0.0.2" =
    self.by-version."prettysize"."0.0.3";
  by-version."prettysize"."0.0.3" = self.buildNodePackage {
    name = "prettysize-0.0.3";
    version = "0.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/prettysize/-/prettysize-0.0.3.tgz";
      name = "prettysize-0.0.3.tgz";
      sha1 = "14afff6a645e591a4ddf1c72919c23b4146181a1";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."promptly"."0.2.0" =
    self.by-version."promptly"."0.2.0";
  by-version."promptly"."0.2.0" = self.buildNodePackage {
    name = "promptly-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/promptly/-/promptly-0.2.0.tgz";
      name = "promptly-0.2.0.tgz";
      sha1 = "73ef200fa8329d5d3a8df41798950b8646ca46d9";
    };
    deps = {
      "read-1.0.6" = self.by-version."read"."1.0.6";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."promptly"."~0.2.0" =
    self.by-version."promptly"."0.2.1";
  by-version."promptly"."0.2.1" = self.buildNodePackage {
    name = "promptly-0.2.1";
    version = "0.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/promptly/-/promptly-0.2.1.tgz";
      name = "promptly-0.2.1.tgz";
      sha1 = "6444e7ca4dbd9899e7eeb5ec3922827ebdc22b3b";
    };
    deps = {
      "read-1.0.6" = self.by-version."read"."1.0.6";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."proto-list"."~1.2.1" =
    self.by-version."proto-list"."1.2.4";
  by-version."proto-list"."1.2.4" = self.buildNodePackage {
    name = "proto-list-1.2.4";
    version = "1.2.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/proto-list/-/proto-list-1.2.4.tgz";
      name = "proto-list-1.2.4.tgz";
      sha1 = "212d5bfe1318306a420f6402b8e26ff39647a849";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."protobufjs"."^3.2.2" =
    self.by-version."protobufjs"."3.8.2";
  by-version."protobufjs"."3.8.2" = self.buildNodePackage {
    name = "protobufjs-3.8.2";
    version = "3.8.2";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/protobufjs/-/protobufjs-3.8.2.tgz";
      name = "protobufjs-3.8.2.tgz";
      sha1 = "bc826e34c3af4697e8d0af7a669e4d612aedcd17";
    };
    deps = {
      "bytebuffer-3.5.4" = self.by-version."bytebuffer"."3.5.4";
      "ascli-0.3.0" = self.by-version."ascli"."0.3.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."pullstream".">= 0.4.1 < 1" =
    self.by-version."pullstream"."0.4.1";
  by-version."pullstream"."0.4.1" = self.buildNodePackage {
    name = "pullstream-0.4.1";
    version = "0.4.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/pullstream/-/pullstream-0.4.1.tgz";
      name = "pullstream-0.4.1.tgz";
      sha1 = "d6fb3bf5aed697e831150eb1002c25a3f8ae1314";
    };
    deps = {
      "over-0.0.5" = self.by-version."over"."0.0.5";
      "readable-stream-1.0.33" = self.by-version."readable-stream"."1.0.33";
      "setimmediate-1.0.2" = self.by-version."setimmediate"."1.0.2";
      "slice-stream-1.0.0" = self.by-version."slice-stream"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."pump"."^0.3.1" =
    self.by-version."pump"."0.3.5";
  by-version."pump"."0.3.5" = self.buildNodePackage {
    name = "pump-0.3.5";
    version = "0.3.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/pump/-/pump-0.3.5.tgz";
      name = "pump-0.3.5.tgz";
      sha1 = "ae5ff8c1f93ed87adc6530a97565b126f585454b";
    };
    deps = {
      "once-1.2.0" = self.by-version."once"."1.2.0";
      "end-of-stream-1.0.0" = self.by-version."end-of-stream"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."pump"."^0.3.5" =
    self.by-version."pump"."0.3.5";
  by-spec."pump"."~0.3.0" =
    self.by-version."pump"."0.3.5";
  by-spec."punycode".">=0.2.0" =
    self.by-version."punycode"."1.3.2";
  by-version."punycode"."1.3.2" = self.buildNodePackage {
    name = "punycode-1.3.2";
    version = "1.3.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/punycode/-/punycode-1.3.2.tgz";
      name = "punycode-1.3.2.tgz";
      sha1 = "9653a036fb7c1ee42342f2325cceefea3926c48d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."q"."1.0.1" =
    self.by-version."q"."1.0.1";
  by-version."q"."1.0.1" = self.buildNodePackage {
    name = "q-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/q/-/q-1.0.1.tgz";
      name = "q-1.0.1.tgz";
      sha1 = "11872aeedee89268110b10a718448ffb10112a14";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."q"."1.1.2" =
    self.by-version."q"."1.1.2";
  by-version."q"."1.1.2" = self.buildNodePackage {
    name = "q-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/q/-/q-1.1.2.tgz";
      name = "q-1.1.2.tgz";
      sha1 = "6357e291206701d99f197ab84e57e8ad196f2a89";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."q"."2.0.2" =
    self.by-version."q"."2.0.2";
  by-version."q"."2.0.2" = self.buildNodePackage {
    name = "q-2.0.2";
    version = "2.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/q/-/q-2.0.2.tgz";
      name = "q-2.0.2.tgz";
      sha1 = "4629e6cc668ff8554cfa775dab5aba50bad8f56d";
    };
    deps = {
      "asap-1.0.0" = self.by-version."asap"."1.0.0";
      "collections-2.0.1" = self.by-version."collections"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "q" = self.by-version."q"."2.0.2";
  by-spec."q"."~0.9.2" =
    self.by-version."q"."0.9.7";
  by-version."q"."0.9.7" = self.buildNodePackage {
    name = "q-0.9.7";
    version = "0.9.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/q/-/q-0.9.7.tgz";
      name = "q-0.9.7.tgz";
      sha1 = "4de2e6cb3b29088c9e4cbc03bf9d42fb96ce2f75";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."q"."~0.9.6" =
    self.by-version."q"."0.9.7";
  by-spec."q"."~1.0.0" =
    self.by-version."q"."1.0.1";
  by-spec."q"."~1.0.1" =
    self.by-version."q"."1.0.1";
  by-spec."qap"."^3.1.2" =
    self.by-version."qap"."3.1.3";
  by-version."qap"."3.1.3" = self.buildNodePackage {
    name = "qap-3.1.3";
    version = "3.1.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/qap/-/qap-3.1.3.tgz";
      name = "qap-3.1.3.tgz";
      sha1 = "394288bf07c8fe16cf36bb2e40a3bb947ed24963";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."qs"."~0.5.2" =
    self.by-version."qs"."0.5.6";
  by-version."qs"."0.5.6" = self.buildNodePackage {
    name = "qs-0.5.6";
    version = "0.5.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/qs/-/qs-0.5.6.tgz";
      name = "qs-0.5.6.tgz";
      sha1 = "31b1ad058567651c526921506b9a8793911a0384";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."qs"."~0.5.4" =
    self.by-version."qs"."0.5.6";
  by-spec."qs"."~0.6.0" =
    self.by-version."qs"."0.6.6";
  by-version."qs"."0.6.6" = self.buildNodePackage {
    name = "qs-0.6.6";
    version = "0.6.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/qs/-/qs-0.6.6.tgz";
      name = "qs-0.6.6.tgz";
      sha1 = "6e015098ff51968b8a3c819001d5f2c89bc4b107";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."qs"."~1.2.0" =
    self.by-version."qs"."1.2.2";
  by-version."qs"."1.2.2" = self.buildNodePackage {
    name = "qs-1.2.2";
    version = "1.2.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/qs/-/qs-1.2.2.tgz";
      name = "qs-1.2.2.tgz";
      sha1 = "19b57ff24dc2a99ce1f8bdf6afcda59f8ef61f88";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."qs"."~2.3.1" =
    self.by-version."qs"."2.3.3";
  by-version."qs"."2.3.3" = self.buildNodePackage {
    name = "qs-2.3.3";
    version = "2.3.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/qs/-/qs-2.3.3.tgz";
      name = "qs-2.3.3.tgz";
      sha1 = "e9e85adbe75da0bbe4c8e0476a086290f863b404";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."qs"."~3.1.0" =
    self.by-version."qs"."3.1.0";
  by-version."qs"."3.1.0" = self.buildNodePackage {
    name = "qs-3.1.0";
    version = "3.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/qs/-/qs-3.1.0.tgz";
      name = "qs-3.1.0.tgz";
      sha1 = "d0e9ae745233a12dc43fb4f3055bba446261153c";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."random-access-file"."^0.3.1" =
    self.by-version."random-access-file"."0.3.1";
  by-version."random-access-file"."0.3.1" = self.buildNodePackage {
    name = "random-access-file-0.3.1";
    version = "0.3.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/random-access-file/-/random-access-file-0.3.1.tgz";
      name = "random-access-file-0.3.1.tgz";
      sha1 = "8afffaac665de38feba00f371429648f057d5c16";
    };
    deps = {
      "thunky-0.1.0" = self.by-version."thunky"."0.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."range-parser"."^1.0.0" =
    self.by-version."range-parser"."1.0.2";
  by-version."range-parser"."1.0.2" = self.buildNodePackage {
    name = "range-parser-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/range-parser/-/range-parser-1.0.2.tgz";
      name = "range-parser-1.0.2.tgz";
      sha1 = "06a12a42e5131ba8e457cd892044867f2344e549";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."rc".">=0.5.5" =
    self.by-version."rc"."1.0.3";
  by-version."rc"."1.0.3" = self.buildNodePackage {
    name = "rc-1.0.3";
    version = "1.0.3";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/rc/-/rc-1.0.3.tgz";
      name = "rc-1.0.3.tgz";
      sha1 = "51bf28d21f13a9324528a9633460161ad9a39f77";
    };
    deps = {
      "minimist-0.0.10" = self.by-version."minimist"."0.0.10";
      "deep-extend-0.2.11" = self.by-version."deep-extend"."0.2.11";
      "strip-json-comments-0.1.3" = self.by-version."strip-json-comments"."0.1.3";
      "ini-1.3.4" = self.by-version."ini"."1.3.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."rc"."^0.4.0" =
    self.by-version."rc"."0.4.0";
  by-version."rc"."0.4.0" = self.buildNodePackage {
    name = "rc-0.4.0";
    version = "0.4.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/rc/-/rc-0.4.0.tgz";
      name = "rc-0.4.0.tgz";
      sha1 = "ce24a2029ad94c3a40d09604a87227027d7210d3";
    };
    deps = {
      "minimist-0.0.10" = self.by-version."minimist"."0.0.10";
      "deep-extend-0.2.11" = self.by-version."deep-extend"."0.2.11";
      "strip-json-comments-0.1.3" = self.by-version."strip-json-comments"."0.1.3";
      "ini-1.1.0" = self.by-version."ini"."1.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."rc"."^1.0.1" =
    self.by-version."rc"."1.0.3";
  by-spec."read"."~1.0.4" =
    self.by-version."read"."1.0.6";
  by-version."read"."1.0.6" = self.buildNodePackage {
    name = "read-1.0.6";
    version = "1.0.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/read/-/read-1.0.6.tgz";
      name = "read-1.0.6.tgz";
      sha1 = "09873c14ecc114d063fad43b8ca5a33d304721c8";
    };
    deps = {
      "mute-stream-0.0.5" = self.by-version."mute-stream"."0.0.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."read-all-stream"."^2.0.0" =
    self.by-version."read-all-stream"."2.1.2";
  by-version."read-all-stream"."2.1.2" = self.buildNodePackage {
    name = "read-all-stream-2.1.2";
    version = "2.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/read-all-stream/-/read-all-stream-2.1.2.tgz";
      name = "read-all-stream-2.1.2.tgz";
      sha1 = "0e80070eadd99712383e9f3c26762310900bda0a";
    };
    deps = {
      "readable-stream-1.1.13" = self.by-version."readable-stream"."1.1.13";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."read-torrent"."1.0.0" =
    self.by-version."read-torrent"."1.0.0";
  by-version."read-torrent"."1.0.0" = self.buildNodePackage {
    name = "read-torrent-1.0.0";
    version = "1.0.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/read-torrent/-/read-torrent-1.0.0.tgz";
      name = "read-torrent-1.0.0.tgz";
      sha1 = "d45427a10dbbf21479fdf7e1ce8ce4ad39770966";
    };
    deps = {
      "request-2.16.6" = self.by-version."request"."2.16.6";
      "parse-torrent-1.0.0" = self.by-version."parse-torrent"."1.0.0";
      "magnet-uri-2.0.1" = self.by-version."magnet-uri"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "read-torrent" = self.by-version."read-torrent"."1.0.0";
  by-spec."read-torrent"."1.2.0" =
    self.by-version."read-torrent"."1.2.0";
  by-version."read-torrent"."1.2.0" = self.buildNodePackage {
    name = "read-torrent-1.2.0";
    version = "1.2.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/read-torrent/-/read-torrent-1.2.0.tgz";
      name = "read-torrent-1.2.0.tgz";
      sha1 = "2b5fa465ab1e3a9a2e478403b425910ae66c58a9";
    };
    deps = {
      "magnet-uri-2.0.1" = self.by-version."magnet-uri"."2.0.1";
      "parse-torrent-1.0.0" = self.by-version."parse-torrent"."1.0.0";
      "request-2.16.6" = self.by-version."request"."2.16.6";
      "xtend-4.0.0" = self.by-version."xtend"."4.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."read-torrent"."^1.1.0" =
    self.by-version."read-torrent"."1.3.0";
  by-version."read-torrent"."1.3.0" = self.buildNodePackage {
    name = "read-torrent-1.3.0";
    version = "1.3.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/read-torrent/-/read-torrent-1.3.0.tgz";
      name = "read-torrent-1.3.0.tgz";
      sha1 = "4e0ef5bea6cb24d31843eb6fa8543ad0232ab9f4";
    };
    deps = {
      "magnet-uri-2.0.1" = self.by-version."magnet-uri"."2.0.1";
      "parse-torrent-4.1.0" = self.by-version."parse-torrent"."4.1.0";
      "request-2.16.6" = self.by-version."request"."2.16.6";
      "xtend-4.0.0" = self.by-version."xtend"."4.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."readable-stream"."1.1" =
    self.by-version."readable-stream"."1.1.13";
  by-version."readable-stream"."1.1.13" = self.buildNodePackage {
    name = "readable-stream-1.1.13";
    version = "1.1.13";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/readable-stream/-/readable-stream-1.1.13.tgz";
      name = "readable-stream-1.1.13.tgz";
      sha1 = "f6eef764f514c89e2b9e23146a75ba106756d23e";
    };
    deps = {
      "core-util-is-1.0.1" = self.by-version."core-util-is"."1.0.1";
      "isarray-0.0.1" = self.by-version."isarray"."0.0.1";
      "string_decoder-0.10.31" = self.by-version."string_decoder"."0.10.31";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."readable-stream"."^1.0.2" =
    self.by-version."readable-stream"."1.1.13";
  by-spec."readable-stream"."^1.0.27-1" =
    self.by-version."readable-stream"."1.1.13";
  by-spec."readable-stream"."^1.1.13" =
    self.by-version."readable-stream"."1.1.13";
  by-spec."readable-stream"."~1.0.0" =
    self.by-version."readable-stream"."1.0.33";
  by-version."readable-stream"."1.0.33" = self.buildNodePackage {
    name = "readable-stream-1.0.33";
    version = "1.0.33";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/readable-stream/-/readable-stream-1.0.33.tgz";
      name = "readable-stream-1.0.33.tgz";
      sha1 = "3a360dd66c1b1d7fd4705389860eda1d0f61126c";
    };
    deps = {
      "core-util-is-1.0.1" = self.by-version."core-util-is"."1.0.1";
      "isarray-0.0.1" = self.by-version."isarray"."0.0.1";
      "string_decoder-0.10.31" = self.by-version."string_decoder"."0.10.31";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."readable-stream"."~1.0.2" =
    self.by-version."readable-stream"."1.0.33";
  by-spec."readable-stream"."~1.0.24" =
    self.by-version."readable-stream"."1.0.33";
  by-spec."readable-stream"."~1.0.26" =
    self.by-version."readable-stream"."1.0.33";
  by-spec."readable-stream"."~1.0.26-2" =
    self.by-version."readable-stream"."1.0.33";
  by-spec."readable-stream"."~1.0.26-4" =
    self.by-version."readable-stream"."1.0.33";
  by-spec."readable-stream"."~1.0.31" =
    self.by-version."readable-stream"."1.0.33";
  by-spec."readable-stream"."~1.1.13" =
    self.by-version."readable-stream"."1.1.13";
  by-spec."readable-stream"."~1.1.8" =
    self.by-version."readable-stream"."1.1.13";
  by-spec."readable-stream"."~1.1.9" =
    self.by-version."readable-stream"."1.1.13";
  by-spec."readdirp"."*" =
    self.by-version."readdirp"."1.3.0";
  by-version."readdirp"."1.3.0" = self.buildNodePackage {
    name = "readdirp-1.3.0";
    version = "1.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/readdirp/-/readdirp-1.3.0.tgz";
      name = "readdirp-1.3.0.tgz";
      sha1 = "eaf1a9b463be9a8190fc9ae163aa1ac934aa340b";
    };
    deps = {
      "graceful-fs-2.0.3" = self.by-version."graceful-fs"."2.0.3";
      "minimatch-0.2.14" = self.by-version."minimatch"."0.2.14";
      "readable-stream-1.0.33" = self.by-version."readable-stream"."1.0.33";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "readdirp" = self.by-version."readdirp"."1.3.0";
  by-spec."readline2"."^0.1.1" =
    self.by-version."readline2"."0.1.1";
  by-version."readline2"."0.1.1" = self.buildNodePackage {
    name = "readline2-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/readline2/-/readline2-0.1.1.tgz";
      name = "readline2-0.1.1.tgz";
      sha1 = "99443ba6e83b830ef3051bfd7dc241a82728d568";
    };
    deps = {
      "mute-stream-0.0.4" = self.by-version."mute-stream"."0.0.4";
      "strip-ansi-2.0.1" = self.by-version."strip-ansi"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."readline2"."~0.1.0" =
    self.by-version."readline2"."0.1.1";
  by-spec."redeyed"."~0.4.0" =
    self.by-version."redeyed"."0.4.4";
  by-version."redeyed"."0.4.4" = self.buildNodePackage {
    name = "redeyed-0.4.4";
    version = "0.4.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/redeyed/-/redeyed-0.4.4.tgz";
      name = "redeyed-0.4.4.tgz";
      sha1 = "37e990a6f2b21b2a11c2e6a48fd4135698cba97f";
    };
    deps = {
      "esprima-1.0.4" = self.by-version."esprima"."1.0.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."registry-url"."^0.1.0" =
    self.by-version."registry-url"."0.1.1";
  by-version."registry-url"."0.1.1" = self.buildNodePackage {
    name = "registry-url-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/registry-url/-/registry-url-0.1.1.tgz";
      name = "registry-url-0.1.1.tgz";
      sha1 = "1739427b81b110b302482a1c7cd727ffcc82d5be";
    };
    deps = {
      "npmconf-2.1.2" = self.by-version."npmconf"."2.1.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."registry-url"."^3.0.0" =
    self.by-version."registry-url"."3.0.3";
  by-version."registry-url"."3.0.3" = self.buildNodePackage {
    name = "registry-url-3.0.3";
    version = "3.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/registry-url/-/registry-url-3.0.3.tgz";
      name = "registry-url-3.0.3.tgz";
      sha1 = "c9f5102e0fd9c9f250522a7f19f68672c84ccc96";
    };
    deps = {
      "rc-1.0.3" = self.by-version."rc"."1.0.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."request"."2" =
    self.by-version."request"."2.57.0";
  by-version."request"."2.57.0" = self.buildNodePackage {
    name = "request-2.57.0";
    version = "2.57.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/request/-/request-2.57.0.tgz";
      name = "request-2.57.0.tgz";
      sha1 = "d445105a42d009b9d724289633b449a6d723d989";
    };
    deps = {
      "bl-0.9.4" = self.by-version."bl"."0.9.4";
      "caseless-0.10.0" = self.by-version."caseless"."0.10.0";
      "forever-agent-0.6.1" = self.by-version."forever-agent"."0.6.1";
      "form-data-0.2.0" = self.by-version."form-data"."0.2.0";
      "json-stringify-safe-5.0.1" = self.by-version."json-stringify-safe"."5.0.1";
      "mime-types-2.0.14" = self.by-version."mime-types"."2.0.14";
      "node-uuid-1.4.3" = self.by-version."node-uuid"."1.4.3";
      "qs-3.1.0" = self.by-version."qs"."3.1.0";
      "tunnel-agent-0.4.0" = self.by-version."tunnel-agent"."0.4.0";
      "tough-cookie-1.2.0" = self.by-version."tough-cookie"."1.2.0";
      "http-signature-0.11.0" = self.by-version."http-signature"."0.11.0";
      "oauth-sign-0.8.0" = self.by-version."oauth-sign"."0.8.0";
      "hawk-2.3.1" = self.by-version."hawk"."2.3.1";
      "aws-sign2-0.5.0" = self.by-version."aws-sign2"."0.5.0";
      "stringstream-0.0.4" = self.by-version."stringstream"."0.0.4";
      "combined-stream-1.0.3" = self.by-version."combined-stream"."1.0.3";
      "isstream-0.1.2" = self.by-version."isstream"."0.1.2";
      "har-validator-1.7.1" = self.by-version."har-validator"."1.7.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."request"."^2.36.0" =
    self.by-version."request"."2.57.0";
  "request" = self.by-version."request"."2.57.0";
  by-spec."request"."^2.39.0" =
    self.by-version."request"."2.57.0";
  by-spec."request"."^2.40.0" =
    self.by-version."request"."2.57.0";
  by-spec."request"."~2.16.2" =
    self.by-version."request"."2.16.6";
  by-version."request"."2.16.6" = self.buildNodePackage {
    name = "request-2.16.6";
    version = "2.16.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/request/-/request-2.16.6.tgz";
      name = "request-2.16.6.tgz";
      sha1 = "872fe445ae72de266b37879d6ad7dc948fa01cad";
    };
    deps = {
      "form-data-0.0.10" = self.by-version."form-data"."0.0.10";
      "mime-1.2.11" = self.by-version."mime"."1.2.11";
      "hawk-0.10.2" = self.by-version."hawk"."0.10.2";
      "node-uuid-1.4.3" = self.by-version."node-uuid"."1.4.3";
      "cookie-jar-0.2.0" = self.by-version."cookie-jar"."0.2.0";
      "aws-sign-0.2.0" = self.by-version."aws-sign"."0.2.0";
      "oauth-sign-0.2.0" = self.by-version."oauth-sign"."0.2.0";
      "forever-agent-0.2.0" = self.by-version."forever-agent"."0.2.0";
      "tunnel-agent-0.2.0" = self.by-version."tunnel-agent"."0.2.0";
      "json-stringify-safe-3.0.0" = self.by-version."json-stringify-safe"."3.0.0";
      "qs-0.5.6" = self.by-version."qs"."0.5.6";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."request"."~2.27.0" =
    self.by-version."request"."2.27.0";
  by-version."request"."2.27.0" = self.buildNodePackage {
    name = "request-2.27.0";
    version = "2.27.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/request/-/request-2.27.0.tgz";
      name = "request-2.27.0.tgz";
      sha1 = "dfb1a224dd3a5a9bade4337012503d710e538668";
    };
    deps = {
      "qs-0.6.6" = self.by-version."qs"."0.6.6";
      "json-stringify-safe-5.0.1" = self.by-version."json-stringify-safe"."5.0.1";
      "forever-agent-0.5.2" = self.by-version."forever-agent"."0.5.2";
      "tunnel-agent-0.3.0" = self.by-version."tunnel-agent"."0.3.0";
      "http-signature-0.10.1" = self.by-version."http-signature"."0.10.1";
      "hawk-1.0.0" = self.by-version."hawk"."1.0.0";
      "aws-sign-0.3.0" = self.by-version."aws-sign"."0.3.0";
      "oauth-sign-0.3.0" = self.by-version."oauth-sign"."0.3.0";
      "cookie-jar-0.3.0" = self.by-version."cookie-jar"."0.3.0";
      "node-uuid-1.4.3" = self.by-version."node-uuid"."1.4.3";
      "mime-1.2.11" = self.by-version."mime"."1.2.11";
      "form-data-0.1.4" = self.by-version."form-data"."0.1.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."request"."~2.33.0" =
    self.by-version."request"."2.33.0";
  by-version."request"."2.33.0" = self.buildNodePackage {
    name = "request-2.33.0";
    version = "2.33.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/request/-/request-2.33.0.tgz";
      name = "request-2.33.0.tgz";
      sha1 = "5167878131726070ec633752ea230a2379dc65ff";
    };
    deps = {
      "qs-0.6.6" = self.by-version."qs"."0.6.6";
      "json-stringify-safe-5.0.1" = self.by-version."json-stringify-safe"."5.0.1";
      "forever-agent-0.5.2" = self.by-version."forever-agent"."0.5.2";
      "node-uuid-1.4.3" = self.by-version."node-uuid"."1.4.3";
      "mime-1.2.11" = self.by-version."mime"."1.2.11";
    };
    optionalDependencies = {
      "tough-cookie-1.2.0" = self.by-version."tough-cookie"."1.2.0";
      "form-data-0.1.4" = self.by-version."form-data"."0.1.4";
      "tunnel-agent-0.3.0" = self.by-version."tunnel-agent"."0.3.0";
      "http-signature-0.10.1" = self.by-version."http-signature"."0.10.1";
      "oauth-sign-0.3.0" = self.by-version."oauth-sign"."0.3.0";
      "hawk-1.0.0" = self.by-version."hawk"."1.0.0";
      "aws-sign2-0.5.0" = self.by-version."aws-sign2"."0.5.0";
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."request"."~2.36.0" =
    self.by-version."request"."2.36.0";
  by-version."request"."2.36.0" = self.buildNodePackage {
    name = "request-2.36.0";
    version = "2.36.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/request/-/request-2.36.0.tgz";
      name = "request-2.36.0.tgz";
      sha1 = "28c6c04262c7b9ffdd21b9255374517ee6d943f5";
    };
    deps = {
      "qs-0.6.6" = self.by-version."qs"."0.6.6";
      "json-stringify-safe-5.0.1" = self.by-version."json-stringify-safe"."5.0.1";
      "mime-1.2.11" = self.by-version."mime"."1.2.11";
      "forever-agent-0.5.2" = self.by-version."forever-agent"."0.5.2";
      "node-uuid-1.4.3" = self.by-version."node-uuid"."1.4.3";
    };
    optionalDependencies = {
      "tough-cookie-1.2.0" = self.by-version."tough-cookie"."1.2.0";
      "form-data-0.1.4" = self.by-version."form-data"."0.1.4";
      "tunnel-agent-0.4.0" = self.by-version."tunnel-agent"."0.4.0";
      "http-signature-0.10.1" = self.by-version."http-signature"."0.10.1";
      "oauth-sign-0.3.0" = self.by-version."oauth-sign"."0.3.0";
      "hawk-1.0.0" = self.by-version."hawk"."1.0.0";
      "aws-sign2-0.5.0" = self.by-version."aws-sign2"."0.5.0";
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."request"."~2.42.0" =
    self.by-version."request"."2.42.0";
  by-version."request"."2.42.0" = self.buildNodePackage {
    name = "request-2.42.0";
    version = "2.42.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/request/-/request-2.42.0.tgz";
      name = "request-2.42.0.tgz";
      sha1 = "572bd0148938564040ac7ab148b96423a063304a";
    };
    deps = {
      "bl-0.9.4" = self.by-version."bl"."0.9.4";
      "caseless-0.6.0" = self.by-version."caseless"."0.6.0";
      "forever-agent-0.5.2" = self.by-version."forever-agent"."0.5.2";
      "qs-1.2.2" = self.by-version."qs"."1.2.2";
      "json-stringify-safe-5.0.1" = self.by-version."json-stringify-safe"."5.0.1";
      "mime-types-1.0.2" = self.by-version."mime-types"."1.0.2";
      "node-uuid-1.4.3" = self.by-version."node-uuid"."1.4.3";
      "tunnel-agent-0.4.0" = self.by-version."tunnel-agent"."0.4.0";
    };
    optionalDependencies = {
      "tough-cookie-1.2.0" = self.by-version."tough-cookie"."1.2.0";
      "form-data-0.1.4" = self.by-version."form-data"."0.1.4";
      "http-signature-0.10.1" = self.by-version."http-signature"."0.10.1";
      "oauth-sign-0.4.0" = self.by-version."oauth-sign"."0.4.0";
      "hawk-1.1.1" = self.by-version."hawk"."1.1.1";
      "aws-sign2-0.5.0" = self.by-version."aws-sign2"."0.5.0";
      "stringstream-0.0.4" = self.by-version."stringstream"."0.0.4";
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."request"."~2.51.0" =
    self.by-version."request"."2.51.0";
  by-version."request"."2.51.0" = self.buildNodePackage {
    name = "request-2.51.0";
    version = "2.51.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/request/-/request-2.51.0.tgz";
      name = "request-2.51.0.tgz";
      sha1 = "35d00bbecc012e55f907b1bd9e0dbd577bfef26e";
    };
    deps = {
      "bl-0.9.4" = self.by-version."bl"."0.9.4";
      "caseless-0.8.0" = self.by-version."caseless"."0.8.0";
      "forever-agent-0.5.2" = self.by-version."forever-agent"."0.5.2";
      "form-data-0.2.0" = self.by-version."form-data"."0.2.0";
      "json-stringify-safe-5.0.1" = self.by-version."json-stringify-safe"."5.0.1";
      "mime-types-1.0.2" = self.by-version."mime-types"."1.0.2";
      "node-uuid-1.4.3" = self.by-version."node-uuid"."1.4.3";
      "qs-2.3.3" = self.by-version."qs"."2.3.3";
      "tunnel-agent-0.4.0" = self.by-version."tunnel-agent"."0.4.0";
      "tough-cookie-1.2.0" = self.by-version."tough-cookie"."1.2.0";
      "http-signature-0.10.1" = self.by-version."http-signature"."0.10.1";
      "oauth-sign-0.5.0" = self.by-version."oauth-sign"."0.5.0";
      "hawk-1.1.1" = self.by-version."hawk"."1.1.1";
      "aws-sign2-0.5.0" = self.by-version."aws-sign2"."0.5.0";
      "stringstream-0.0.4" = self.by-version."stringstream"."0.0.4";
      "combined-stream-0.0.7" = self.by-version."combined-stream"."0.0.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."request-progress"."0.3.0" =
    self.by-version."request-progress"."0.3.0";
  by-version."request-progress"."0.3.0" = self.buildNodePackage {
    name = "request-progress-0.3.0";
    version = "0.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/request-progress/-/request-progress-0.3.0.tgz";
      name = "request-progress-0.3.0.tgz";
      sha1 = "bdf2062bfc197c5d492500d44cb3aff7865b492e";
    };
    deps = {
      "throttleit-0.0.2" = self.by-version."throttleit"."0.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."request-progress"."~0.3.0" =
    self.by-version."request-progress"."0.3.1";
  by-version."request-progress"."0.3.1" = self.buildNodePackage {
    name = "request-progress-0.3.1";
    version = "0.3.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/request-progress/-/request-progress-0.3.1.tgz";
      name = "request-progress-0.3.1.tgz";
      sha1 = "0721c105d8a96ac6b2ce8b2c89ae2d5ecfcf6b3a";
    };
    deps = {
      "throttleit-0.0.2" = self.by-version."throttleit"."0.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."request-progress"."~0.3.1" =
    self.by-version."request-progress"."0.3.1";
  by-spec."request-replay"."~0.2.0" =
    self.by-version."request-replay"."0.2.0";
  by-version."request-replay"."0.2.0" = self.buildNodePackage {
    name = "request-replay-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/request-replay/-/request-replay-0.2.0.tgz";
      name = "request-replay-0.2.0.tgz";
      sha1 = "9b693a5d118b39f5c596ead5ed91a26444057f60";
    };
    deps = {
      "retry-0.6.1" = self.by-version."retry"."0.6.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."retry"."0.6.0" =
    self.by-version."retry"."0.6.0";
  by-version."retry"."0.6.0" = self.buildNodePackage {
    name = "retry-0.6.0";
    version = "0.6.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/retry/-/retry-0.6.0.tgz";
      name = "retry-0.6.0.tgz";
      sha1 = "1c010713279a6fd1e8def28af0c3ff1871caa537";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."retry"."~0.6.0" =
    self.by-version."retry"."0.6.1";
  by-version."retry"."0.6.1" = self.buildNodePackage {
    name = "retry-0.6.1";
    version = "0.6.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/retry/-/retry-0.6.1.tgz";
      name = "retry-0.6.1.tgz";
      sha1 = "fdc90eed943fde11b893554b8cc63d0e899ba918";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."rimraf"."2" =
    self.by-version."rimraf"."2.4.0";
  by-version."rimraf"."2.4.0" = self.buildNodePackage {
    name = "rimraf-2.4.0";
    version = "2.4.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/rimraf/-/rimraf-2.4.0.tgz";
      name = "rimraf-2.4.0.tgz";
      sha1 = "40ba0416037d8511ecb50f6b07cf8d18e658a864";
    };
    deps = {
      "glob-4.5.3" = self.by-version."glob"."4.5.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."rimraf"."2.2.8" =
    self.by-version."rimraf"."2.2.8";
  by-version."rimraf"."2.2.8" = self.buildNodePackage {
    name = "rimraf-2.2.8";
    version = "2.2.8";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/rimraf/-/rimraf-2.2.8.tgz";
      name = "rimraf-2.2.8.tgz";
      sha1 = "e439be2aaee327321952730f99a8929e4fc50582";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "rimraf" = self.by-version."rimraf"."2.2.8";
  by-spec."rimraf"."^2.2.5" =
    self.by-version."rimraf"."2.4.0";
  by-spec."rimraf"."~2.2.0" =
    self.by-version."rimraf"."2.2.8";
  by-spec."rimraf"."~2.2.1" =
    self.by-version."rimraf"."2.2.8";
  by-spec."rimraf"."~2.2.2" =
    self.by-version."rimraf"."2.2.8";
  by-spec."rimraf"."~2.2.6" =
    self.by-version."rimraf"."2.2.8";
  by-spec."rimraf"."~2.2.8" =
    self.by-version."rimraf"."2.2.8";
  by-spec."run-parallel"."^1.0.0" =
    self.by-version."run-parallel"."1.1.1";
  by-version."run-parallel"."1.1.1" = self.buildNodePackage {
    name = "run-parallel-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/run-parallel/-/run-parallel-1.1.1.tgz";
      name = "run-parallel-1.1.1.tgz";
      sha1 = "043c1f40e5ea94485f6858b79c6ca08254d0720e";
    };
    deps = {
      "dezalgo-1.0.2" = self.by-version."dezalgo"."1.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."run-series"."^1.0.2" =
    self.by-version."run-series"."1.1.1";
  by-version."run-series"."1.1.1" = self.buildNodePackage {
    name = "run-series-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/run-series/-/run-series-1.1.1.tgz";
      name = "run-series-1.1.1.tgz";
      sha1 = "1ada4fcf63979aebdd852aea59149364dc0c37c0";
    };
    deps = {
      "dezalgo-1.0.2" = self.by-version."dezalgo"."1.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."rusha"."^0.8.1" =
    self.by-version."rusha"."0.8.2";
  by-version."rusha"."0.8.2" = self.buildNodePackage {
    name = "rusha-0.8.2";
    version = "0.8.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/rusha/-/rusha-0.8.2.tgz";
      name = "rusha-0.8.2.tgz";
      sha1 = "05f3196df37b166bc080db1bbd69c84d64fa1c1f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."rusha-browserify"."^0.7.3" =
    self.by-version."rusha-browserify"."0.7.3";
  by-version."rusha-browserify"."0.7.3" = self.buildNodePackage {
    name = "rusha-browserify-0.7.3";
    version = "0.7.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/rusha-browserify/-/rusha-browserify-0.7.3.tgz";
      name = "rusha-browserify-0.7.3.tgz";
      sha1 = "03b313892e287021cc2fc391e2c154fd7d79aef2";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."rx"."^2.2.27" =
    self.by-version."rx"."2.5.3";
  by-version."rx"."2.5.3" = self.buildNodePackage {
    name = "rx-2.5.3";
    version = "2.5.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/rx/-/rx-2.5.3.tgz";
      name = "rx-2.5.3.tgz";
      sha1 = "21adc7d80f02002af50dae97fd9dbf248755f566";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."rx"."^2.4.3" =
    self.by-version."rx"."2.5.3";
  by-spec."safe-json-stringify"."~1" =
    self.by-version."safe-json-stringify"."1.0.3";
  by-version."safe-json-stringify"."1.0.3" = self.buildNodePackage {
    name = "safe-json-stringify-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/safe-json-stringify/-/safe-json-stringify-1.0.3.tgz";
      name = "safe-json-stringify-1.0.3.tgz";
      sha1 = "3cb6717660a086d07cb5bd9b7a6875bcf67bd05e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."sax"."0.3.5" =
    self.by-version."sax"."0.3.5";
  by-version."sax"."0.3.5" = self.buildNodePackage {
    name = "sax-0.3.5";
    version = "0.3.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/sax/-/sax-0.3.5.tgz";
      name = "sax-0.3.5.tgz";
      sha1 = "88fcfc1f73c0c8bbd5b7c776b6d3f3501eed073d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."sax"."0.5.x" =
    self.by-version."sax"."0.5.8";
  by-version."sax"."0.5.8" = self.buildNodePackage {
    name = "sax-0.5.8";
    version = "0.5.8";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/sax/-/sax-0.5.8.tgz";
      name = "sax-0.5.8.tgz";
      sha1 = "d472db228eb331c2506b0e8c15524adb939d12c1";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."sax"."0.6.x" =
    self.by-version."sax"."0.6.1";
  by-version."sax"."0.6.1" = self.buildNodePackage {
    name = "sax-0.6.1";
    version = "0.6.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/sax/-/sax-0.6.1.tgz";
      name = "sax-0.6.1.tgz";
      sha1 = "563b19c7c1de892e09bfc4f2fc30e3c27f0952b9";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."semver"."2 || 3 || 4" =
    self.by-version."semver"."4.3.6";
  by-version."semver"."4.3.6" = self.buildNodePackage {
    name = "semver-4.3.6";
    version = "4.3.6";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/semver/-/semver-4.3.6.tgz";
      name = "semver-4.3.6.tgz";
      sha1 = "300bc6e0e86374f7ba61068b5b1ecd57fc6532da";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."semver".">=4.3.1" =
    self.by-version."semver"."4.3.6";
  by-spec."semver"."^2.2.1" =
    self.by-version."semver"."2.3.2";
  by-version."semver"."2.3.2" = self.buildNodePackage {
    name = "semver-2.3.2";
    version = "2.3.2";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/semver/-/semver-2.3.2.tgz";
      name = "semver-2.3.2.tgz";
      sha1 = "b9848f25d6cf36333073ec9ef8856d42f1233e52";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."semver"."^2.3.1" =
    self.by-version."semver"."2.3.2";
  "semver" = self.by-version."semver"."2.3.2";
  by-spec."semver"."^4.0.0" =
    self.by-version."semver"."4.3.6";
  by-spec."semver"."^4.3.1" =
    self.by-version."semver"."4.3.6";
  by-spec."semver"."~2.2.1" =
    self.by-version."semver"."2.2.1";
  by-version."semver"."2.2.1" = self.buildNodePackage {
    name = "semver-2.2.1";
    version = "2.2.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/semver/-/semver-2.2.1.tgz";
      name = "semver-2.2.1.tgz";
      sha1 = "7941182b3ffcc580bff1c17942acdf7951c0d213";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."semver"."~2.3.0" =
    self.by-version."semver"."2.3.2";
  by-spec."semver-diff"."^0.1.0" =
    self.by-version."semver-diff"."0.1.0";
  by-version."semver-diff"."0.1.0" = self.buildNodePackage {
    name = "semver-diff-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/semver-diff/-/semver-diff-0.1.0.tgz";
      name = "semver-diff-0.1.0.tgz";
      sha1 = "4f6057ca3eba23cc484b51f64aaf88b131a3855d";
    };
    deps = {
      "semver-2.3.2" = self.by-version."semver"."2.3.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."semver-diff"."^2.0.0" =
    self.by-version."semver-diff"."2.0.0";
  by-version."semver-diff"."2.0.0" = self.buildNodePackage {
    name = "semver-diff-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/semver-diff/-/semver-diff-2.0.0.tgz";
      name = "semver-diff-2.0.0.tgz";
      sha1 = "d43024f91aa7843937dc1379002766809f7480d2";
    };
    deps = {
      "semver-4.3.6" = self.by-version."semver"."4.3.6";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."setimmediate".">= 1.0.1 < 2" =
    self.by-version."setimmediate"."1.0.2";
  by-version."setimmediate"."1.0.2" = self.buildNodePackage {
    name = "setimmediate-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/setimmediate/-/setimmediate-1.0.2.tgz";
      name = "setimmediate-1.0.2.tgz";
      sha1 = "d8221c4fdfeb2561556c5184fa05fb7ce0af73bd";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."setimmediate".">= 1.0.2 < 2" =
    self.by-version."setimmediate"."1.0.2";
  by-spec."sha1"."1.1.0" =
    self.by-version."sha1"."1.1.0";
  by-version."sha1"."1.1.0" = self.buildNodePackage {
    name = "sha1-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/sha1/-/sha1-1.1.0.tgz";
      name = "sha1-1.1.0.tgz";
      sha1 = "8fc2047be39eceb1dc54ebfe35a5049b18a0040b";
    };
    deps = {
      "charenc-0.0.1" = self.by-version."charenc"."0.0.1";
      "crypt-0.0.1" = self.by-version."crypt"."0.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "sha1" = self.by-version."sha1"."1.1.0";
  by-spec."shell-quote"."~1.4.1" =
    self.by-version."shell-quote"."1.4.3";
  by-version."shell-quote"."1.4.3" = self.buildNodePackage {
    name = "shell-quote-1.4.3";
    version = "1.4.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/shell-quote/-/shell-quote-1.4.3.tgz";
      name = "shell-quote-1.4.3.tgz";
      sha1 = "952c44e0b1ed9013ef53958179cc643e8777466b";
    };
    deps = {
      "jsonify-0.0.0" = self.by-version."jsonify"."0.0.0";
      "array-filter-0.0.1" = self.by-version."array-filter"."0.0.1";
      "array-reduce-0.0.0" = self.by-version."array-reduce"."0.0.0";
      "array-map-0.0.0" = self.by-version."array-map"."0.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."shelljs"."0.3.x" =
    self.by-version."shelljs"."0.3.0";
  by-version."shelljs"."0.3.0" = self.buildNodePackage {
    name = "shelljs-0.3.0";
    version = "0.3.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/shelljs/-/shelljs-0.3.0.tgz";
      name = "shelljs-0.3.0.tgz";
      sha1 = "3596e6307a781544f591f37da618360f31db57b1";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."sigmund"."~1.0.0" =
    self.by-version."sigmund"."1.0.1";
  by-version."sigmund"."1.0.1" = self.buildNodePackage {
    name = "sigmund-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/sigmund/-/sigmund-1.0.1.tgz";
      name = "sigmund-1.0.1.tgz";
      sha1 = "3ff21f198cad2175f9f3b781853fd94d0d19b590";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."simple-get"."^1.3.0" =
    self.by-version."simple-get"."1.3.3";
  by-version."simple-get"."1.3.3" = self.buildNodePackage {
    name = "simple-get-1.3.3";
    version = "1.3.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/simple-get/-/simple-get-1.3.3.tgz";
      name = "simple-get-1.3.3.tgz";
      sha1 = "03e4102ff8372034dbc92c2630a78f8440dbf81a";
    };
    deps = {
      "once-1.3.2" = self.by-version."once"."1.3.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."simple-get"."^1.3.1" =
    self.by-version."simple-get"."1.3.3";
  by-spec."simple-sha1"."^2.0.0" =
    self.by-version."simple-sha1"."2.0.7";
  by-version."simple-sha1"."2.0.7" = self.buildNodePackage {
    name = "simple-sha1-2.0.7";
    version = "2.0.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/simple-sha1/-/simple-sha1-2.0.7.tgz";
      name = "simple-sha1-2.0.7.tgz";
      sha1 = "765ef3f6a9ef4bf9b734e973cbd63a7a82f887b6";
    };
    deps = {
      "rusha-0.8.2" = self.by-version."rusha"."0.8.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."slice-stream".">= 1.0.0 < 2" =
    self.by-version."slice-stream"."1.0.0";
  by-version."slice-stream"."1.0.0" = self.buildNodePackage {
    name = "slice-stream-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/slice-stream/-/slice-stream-1.0.0.tgz";
      name = "slice-stream-1.0.0.tgz";
      sha1 = "5b33bd66f013b1a7f86460b03d463dec39ad3ea0";
    };
    deps = {
      "readable-stream-1.0.33" = self.by-version."readable-stream"."1.0.33";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."sntp"."0.1.x" =
    self.by-version."sntp"."0.1.4";
  by-version."sntp"."0.1.4" = self.buildNodePackage {
    name = "sntp-0.1.4";
    version = "0.1.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/sntp/-/sntp-0.1.4.tgz";
      name = "sntp-0.1.4.tgz";
      sha1 = "5ef481b951a7b29affdf4afd7f26838fc1120f84";
    };
    deps = {
      "hoek-0.7.6" = self.by-version."hoek"."0.7.6";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."sntp"."0.2.x" =
    self.by-version."sntp"."0.2.4";
  by-version."sntp"."0.2.4" = self.buildNodePackage {
    name = "sntp-0.2.4";
    version = "0.2.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/sntp/-/sntp-0.2.4.tgz";
      name = "sntp-0.2.4.tgz";
      sha1 = "fb885f18b0f3aad189f824862536bceeec750900";
    };
    deps = {
      "hoek-0.9.1" = self.by-version."hoek"."0.9.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."sntp"."1.x.x" =
    self.by-version."sntp"."1.0.9";
  by-version."sntp"."1.0.9" = self.buildNodePackage {
    name = "sntp-1.0.9";
    version = "1.0.9";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/sntp/-/sntp-1.0.9.tgz";
      name = "sntp-1.0.9.tgz";
      sha1 = "6541184cc90aeea6c6e7b35e2659082443c66198";
    };
    deps = {
      "hoek-2.14.0" = self.by-version."hoek"."2.14.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."source-map"."~0.1.7" =
    self.by-version."source-map"."0.1.43";
  by-version."source-map"."0.1.43" = self.buildNodePackage {
    name = "source-map-0.1.43";
    version = "0.1.43";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/source-map/-/source-map-0.1.43.tgz";
      name = "source-map-0.1.43.tgz";
      sha1 = "c24bc146ca517c1471f5dacbe2571b2b7f9e3346";
    };
    deps = {
      "amdefine-0.1.1" = self.by-version."amdefine"."0.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."speedometer"."^0.1.2" =
    self.by-version."speedometer"."0.1.4";
  by-version."speedometer"."0.1.4" = self.buildNodePackage {
    name = "speedometer-0.1.4";
    version = "0.1.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/speedometer/-/speedometer-0.1.4.tgz";
      name = "speedometer-0.1.4.tgz";
      sha1 = "9876dbd2a169d3115402d48e6ea6329c8816a50d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."sprintf".">=0.1.1" =
    self.by-version."sprintf"."0.1.5";
  by-version."sprintf"."0.1.5" = self.buildNodePackage {
    name = "sprintf-0.1.5";
    version = "0.1.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/sprintf/-/sprintf-0.1.5.tgz";
      name = "sprintf-0.1.5.tgz";
      sha1 = "8f83e39a9317c1a502cb7db8050e51c679f6edcf";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."sprintf-js"."~1.0.2" =
    self.by-version."sprintf-js"."1.0.2";
  by-version."sprintf-js"."1.0.2" = self.buildNodePackage {
    name = "sprintf-js-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/sprintf-js/-/sprintf-js-1.0.2.tgz";
      name = "sprintf-js-1.0.2.tgz";
      sha1 = "11e4d84ff32144e35b0bf3a66f8587f38d8f9978";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."statuses"."^1.2.1" =
    self.by-version."statuses"."1.2.1";
  by-version."statuses"."1.2.1" = self.buildNodePackage {
    name = "statuses-1.2.1";
    version = "1.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/statuses/-/statuses-1.2.1.tgz";
      name = "statuses-1.2.1.tgz";
      sha1 = "dded45cc18256d51ed40aec142489d5c61026d28";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."string-length"."^0.1.2" =
    self.by-version."string-length"."0.1.2";
  by-version."string-length"."0.1.2" = self.buildNodePackage {
    name = "string-length-0.1.2";
    version = "0.1.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/string-length/-/string-length-0.1.2.tgz";
      name = "string-length-0.1.2.tgz";
      sha1 = "ab04bb33867ee74beed7fb89bb7f089d392780f2";
    };
    deps = {
      "strip-ansi-0.2.2" = self.by-version."strip-ansi"."0.2.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."string-length"."^1.0.0" =
    self.by-version."string-length"."1.0.0";
  by-version."string-length"."1.0.0" = self.buildNodePackage {
    name = "string-length-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/string-length/-/string-length-1.0.0.tgz";
      name = "string-length-1.0.0.tgz";
      sha1 = "5f0564b174feb299595a763da71513266370d3a9";
    };
    deps = {
      "strip-ansi-2.0.1" = self.by-version."strip-ansi"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."string2compact"."^1.1.1" =
    self.by-version."string2compact"."1.2.2";
  by-version."string2compact"."1.2.2" = self.buildNodePackage {
    name = "string2compact-1.2.2";
    version = "1.2.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/string2compact/-/string2compact-1.2.2.tgz";
      name = "string2compact-1.2.2.tgz";
      sha1 = "420b3a9ee1c46854919b4a2aeac65c43fa50597b";
    };
    deps = {
      "addr-to-ip-port-1.4.1" = self.by-version."addr-to-ip-port"."1.4.1";
      "ipaddr.js-1.0.1" = self.by-version."ipaddr.js"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."string_decoder"."~0.10.x" =
    self.by-version."string_decoder"."0.10.31";
  by-version."string_decoder"."0.10.31" = self.buildNodePackage {
    name = "string_decoder-0.10.31";
    version = "0.10.31";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/string_decoder/-/string_decoder-0.10.31.tgz";
      name = "string_decoder-0.10.31.tgz";
      sha1 = "62e203bc41766c6c28c9fc84301dab1c5310fa94";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."stringify-object"."~0.2.0" =
    self.by-version."stringify-object"."0.2.1";
  by-version."stringify-object"."0.2.1" = self.buildNodePackage {
    name = "stringify-object-0.2.1";
    version = "0.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/stringify-object/-/stringify-object-0.2.1.tgz";
      name = "stringify-object-0.2.1.tgz";
      sha1 = "b58be50b3ff5f371038c545d4332656bfded5620";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."stringify-object"."~1.0.0" =
    self.by-version."stringify-object"."1.0.1";
  by-version."stringify-object"."1.0.1" = self.buildNodePackage {
    name = "stringify-object-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/stringify-object/-/stringify-object-1.0.1.tgz";
      name = "stringify-object-1.0.1.tgz";
      sha1 = "86d35e7dbfbce9aa45637d7ecdd7847e159db8a2";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."stringstream"."~0.0.4" =
    self.by-version."stringstream"."0.0.4";
  by-version."stringstream"."0.0.4" = self.buildNodePackage {
    name = "stringstream-0.0.4";
    version = "0.0.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/stringstream/-/stringstream-0.0.4.tgz";
      name = "stringstream-0.0.4.tgz";
      sha1 = "0f0e3423f942960b5692ac324a57dd093bc41a92";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."strip-ansi"."^0.2.1" =
    self.by-version."strip-ansi"."0.2.2";
  by-version."strip-ansi"."0.2.2" = self.buildNodePackage {
    name = "strip-ansi-0.2.2";
    version = "0.2.2";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/strip-ansi/-/strip-ansi-0.2.2.tgz";
      name = "strip-ansi-0.2.2.tgz";
      sha1 = "854d290c981525fc8c397a910b025ae2d54ffc08";
    };
    deps = {
      "ansi-regex-0.1.0" = self.by-version."ansi-regex"."0.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."strip-ansi"."^0.3.0" =
    self.by-version."strip-ansi"."0.3.0";
  by-version."strip-ansi"."0.3.0" = self.buildNodePackage {
    name = "strip-ansi-0.3.0";
    version = "0.3.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/strip-ansi/-/strip-ansi-0.3.0.tgz";
      name = "strip-ansi-0.3.0.tgz";
      sha1 = "25f48ea22ca79187f3174a4db8759347bb126220";
    };
    deps = {
      "ansi-regex-0.2.1" = self.by-version."ansi-regex"."0.2.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."strip-ansi"."^2.0.0" =
    self.by-version."strip-ansi"."2.0.1";
  by-version."strip-ansi"."2.0.1" = self.buildNodePackage {
    name = "strip-ansi-2.0.1";
    version = "2.0.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/strip-ansi/-/strip-ansi-2.0.1.tgz";
      name = "strip-ansi-2.0.1.tgz";
      sha1 = "df62c1aa94ed2f114e1d0f21fd1d50482b79a60e";
    };
    deps = {
      "ansi-regex-1.1.1" = self.by-version."ansi-regex"."1.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."strip-ansi"."^2.0.1" =
    self.by-version."strip-ansi"."2.0.1";
  by-spec."strip-ansi"."~0.1.0" =
    self.by-version."strip-ansi"."0.1.1";
  by-version."strip-ansi"."0.1.1" = self.buildNodePackage {
    name = "strip-ansi-0.1.1";
    version = "0.1.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/strip-ansi/-/strip-ansi-0.1.1.tgz";
      name = "strip-ansi-0.1.1.tgz";
      sha1 = "39e8a98d044d150660abe4a6808acf70bb7bc991";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."strip-json-comments"."0.1.x" =
    self.by-version."strip-json-comments"."0.1.3";
  by-version."strip-json-comments"."0.1.3" = self.buildNodePackage {
    name = "strip-json-comments-0.1.3";
    version = "0.1.3";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/strip-json-comments/-/strip-json-comments-0.1.3.tgz";
      name = "strip-json-comments-0.1.3.tgz";
      sha1 = "164c64e370a8a3cc00c9e01b539e569823f0ee54";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."strip-json-comments"."1.0.x" =
    self.by-version."strip-json-comments"."1.0.2";
  by-version."strip-json-comments"."1.0.2" = self.buildNodePackage {
    name = "strip-json-comments-1.0.2";
    version = "1.0.2";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/strip-json-comments/-/strip-json-comments-1.0.2.tgz";
      name = "strip-json-comments-1.0.2.tgz";
      sha1 = "5a48ab96023dbac1b7b8d0ffabf6f63f1677be9f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."stylus"."0.45.x" =
    self.by-version."stylus"."0.45.1";
  by-version."stylus"."0.45.1" = self.buildNodePackage {
    name = "stylus-0.45.1";
    version = "0.45.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/stylus/-/stylus-0.45.1.tgz";
      name = "stylus-0.45.1.tgz";
      sha1 = "ef69f62c984a480adc0c9d4aaafb2382a389e453";
    };
    deps = {
      "css-parse-1.7.0" = self.by-version."css-parse"."1.7.0";
      "mkdirp-0.3.5" = self.by-version."mkdirp"."0.3.5";
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "sax-0.5.8" = self.by-version."sax"."0.5.8";
      "glob-3.2.11" = self.by-version."glob"."3.2.11";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."stylus"."0.46.2" =
    self.by-version."stylus"."0.46.2";
  by-version."stylus"."0.46.2" = self.buildNodePackage {
    name = "stylus-0.46.2";
    version = "0.46.2";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/stylus/-/stylus-0.46.2.tgz";
      name = "stylus-0.46.2.tgz";
      sha1 = "9e6723aac7b582a9de6a0d1eacef20967c02e70b";
    };
    deps = {
      "css-parse-1.7.0" = self.by-version."css-parse"."1.7.0";
      "mkdirp-0.3.5" = self.by-version."mkdirp"."0.3.5";
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "sax-0.5.8" = self.by-version."sax"."0.5.8";
      "glob-3.2.11" = self.by-version."glob"."3.2.11";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "stylus" = self.by-version."stylus"."0.46.2";
  by-spec."stylus"."~0.45.0" =
    self.by-version."stylus"."0.45.1";
  by-spec."supports-color"."^0.2.0" =
    self.by-version."supports-color"."0.2.0";
  by-version."supports-color"."0.2.0" = self.buildNodePackage {
    name = "supports-color-0.2.0";
    version = "0.2.0";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/supports-color/-/supports-color-0.2.0.tgz";
      name = "supports-color-0.2.0.tgz";
      sha1 = "d92de2694eb3f67323973d7ae3d8b55b4c22190a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."supports-color"."^1.3.0" =
    self.by-version."supports-color"."1.3.1";
  by-version."supports-color"."1.3.1" = self.buildNodePackage {
    name = "supports-color-1.3.1";
    version = "1.3.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/supports-color/-/supports-color-1.3.1.tgz";
      name = "supports-color-1.3.1.tgz";
      sha1 = "15758df09d8ff3b4acc307539fabe27095e1042d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."tar"."0" =
    self.by-version."tar"."0.1.20";
  by-version."tar"."0.1.20" = self.buildNodePackage {
    name = "tar-0.1.20";
    version = "0.1.20";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/tar/-/tar-0.1.20.tgz";
      name = "tar-0.1.20.tgz";
      sha1 = "42940bae5b5f22c74483699126f9f3f27449cb13";
    };
    deps = {
      "block-stream-0.0.8" = self.by-version."block-stream"."0.0.8";
      "fstream-0.1.31" = self.by-version."fstream"."0.1.31";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."tar"."^1.0.3" =
    self.by-version."tar"."1.0.3";
  by-version."tar"."1.0.3" = self.buildNodePackage {
    name = "tar-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/tar/-/tar-1.0.3.tgz";
      name = "tar-1.0.3.tgz";
      sha1 = "15bcdab244fa4add44e4244a0176edb8aa9a2b44";
    };
    deps = {
      "block-stream-0.0.8" = self.by-version."block-stream"."0.0.8";
      "fstream-1.0.6" = self.by-version."fstream"."1.0.6";
      "inherits-2.0.1" = self.by-version."inherits"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "tar" = self.by-version."tar"."1.0.3";
  by-spec."tar"."~0.1.17" =
    self.by-version."tar"."0.1.20";
  by-spec."tar-fs"."0.5.2" =
    self.by-version."tar-fs"."0.5.2";
  by-version."tar-fs"."0.5.2" = self.buildNodePackage {
    name = "tar-fs-0.5.2";
    version = "0.5.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/tar-fs/-/tar-fs-0.5.2.tgz";
      name = "tar-fs-0.5.2.tgz";
      sha1 = "0f59424be7eeee45232316e302f66d3f6ea6db3e";
    };
    deps = {
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "pump-0.3.5" = self.by-version."pump"."0.3.5";
      "tar-stream-0.4.7" = self.by-version."tar-stream"."0.4.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."tar-fs"."^0.3.2" =
    self.by-version."tar-fs"."0.3.3";
  by-version."tar-fs"."0.3.3" = self.buildNodePackage {
    name = "tar-fs-0.3.3";
    version = "0.3.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/tar-fs/-/tar-fs-0.3.3.tgz";
      name = "tar-fs-0.3.3.tgz";
      sha1 = "c50bc3becefa63955ab25874728150d605718b4b";
    };
    deps = {
      "tar-stream-0.4.7" = self.by-version."tar-stream"."0.4.7";
      "pump-0.3.5" = self.by-version."pump"."0.3.5";
      "mkdirp-0.3.5" = self.by-version."mkdirp"."0.3.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."tar-stream"."^0.4.6" =
    self.by-version."tar-stream"."0.4.7";
  by-version."tar-stream"."0.4.7" = self.buildNodePackage {
    name = "tar-stream-0.4.7";
    version = "0.4.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/tar-stream/-/tar-stream-0.4.7.tgz";
      name = "tar-stream-0.4.7.tgz";
      sha1 = "1f1d2ce9ebc7b42765243ca0e8f1b7bfda0aadcd";
    };
    deps = {
      "bl-0.9.4" = self.by-version."bl"."0.9.4";
      "end-of-stream-1.1.0" = self.by-version."end-of-stream"."1.1.0";
      "readable-stream-1.1.13" = self.by-version."readable-stream"."1.1.13";
      "xtend-4.0.0" = self.by-version."xtend"."4.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."tar-stream"."~0.3.0" =
    self.by-version."tar-stream"."0.3.3";
  by-version."tar-stream"."0.3.3" = self.buildNodePackage {
    name = "tar-stream-0.3.3";
    version = "0.3.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/tar-stream/-/tar-stream-0.3.3.tgz";
      name = "tar-stream-0.3.3.tgz";
      sha1 = "23ca53bd738b8702272a80e26cc938bc4b84b87b";
    };
    deps = {
      "bl-0.6.0" = self.by-version."bl"."0.6.0";
      "end-of-stream-0.1.5" = self.by-version."end-of-stream"."0.1.5";
      "readable-stream-1.0.33" = self.by-version."readable-stream"."1.0.33";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."tar-stream"."~0.4.1" =
    self.by-version."tar-stream"."0.4.7";
  by-spec."temp"."^0.8.1" =
    self.by-version."temp"."0.8.3";
  by-version."temp"."0.8.3" = self.buildNodePackage {
    name = "temp-0.8.3";
    version = "0.8.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/temp/-/temp-0.8.3.tgz";
      name = "temp-0.8.3.tgz";
      sha1 = "e0c6bc4d26b903124410e4fed81103014dfc1f59";
    };
    deps = {
      "os-tmpdir-1.0.1" = self.by-version."os-tmpdir"."1.0.1";
      "rimraf-2.2.8" = self.by-version."rimraf"."2.2.8";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "temp" = self.by-version."temp"."0.8.3";
  by-spec."thirty-two"."^0.0.2" =
    self.by-version."thirty-two"."0.0.2";
  by-version."thirty-two"."0.0.2" = self.buildNodePackage {
    name = "thirty-two-0.0.2";
    version = "0.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/thirty-two/-/thirty-two-0.0.2.tgz";
      name = "thirty-two-0.0.2.tgz";
      sha1 = "4253e29d8cb058f0480267c5698c0e4927e54b6a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."thirty-two"."~0.0.1" =
    self.by-version."thirty-two"."0.0.2";
  by-spec."throttleit"."~0.0.2" =
    self.by-version."throttleit"."0.0.2";
  by-version."throttleit"."0.0.2" = self.buildNodePackage {
    name = "throttleit-0.0.2";
    version = "0.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/throttleit/-/throttleit-0.0.2.tgz";
      name = "throttleit-0.0.2.tgz";
      sha1 = "cfedf88e60c00dd9697b61fdd2a8343a9b680eaf";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."through"."^2.3.6" =
    self.by-version."through"."2.3.7";
  by-version."through"."2.3.7" = self.buildNodePackage {
    name = "through-2.3.7";
    version = "2.3.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/through/-/through-2.3.7.tgz";
      name = "through-2.3.7.tgz";
      sha1 = "5fcc3690fed2fdf98c6fc88b4d207a4624ac3b87";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."through"."~2.3.4" =
    self.by-version."through"."2.3.7";
  by-spec."thunky"."^0.1.0" =
    self.by-version."thunky"."0.1.0";
  by-version."thunky"."0.1.0" = self.buildNodePackage {
    name = "thunky-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/thunky/-/thunky-0.1.0.tgz";
      name = "thunky-0.1.0.tgz";
      sha1 = "bf30146824e2b6e67b0f2d7a4ac8beb26908684e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."thunky"."~0.1.0" =
    self.by-version."thunky"."0.1.0";
  by-spec."timed-out"."^2.0.0" =
    self.by-version."timed-out"."2.0.0";
  by-version."timed-out"."2.0.0" = self.buildNodePackage {
    name = "timed-out-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/timed-out/-/timed-out-2.0.0.tgz";
      name = "timed-out-2.0.0.tgz";
      sha1 = "f38b0ae81d3747d628001f41dafc652ace671c0a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."timers-ext"."0.1" =
    self.by-version."timers-ext"."0.1.0";
  by-version."timers-ext"."0.1.0" = self.buildNodePackage {
    name = "timers-ext-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/timers-ext/-/timers-ext-0.1.0.tgz";
      name = "timers-ext-0.1.0.tgz";
      sha1 = "00345a2ca93089d1251322054389d263e27b77e2";
    };
    deps = {
      "es5-ext-0.10.7" = self.by-version."es5-ext"."0.10.7";
      "next-tick-0.2.2" = self.by-version."next-tick"."0.2.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."tiny-lr-fork"."0.0.5" =
    self.by-version."tiny-lr-fork"."0.0.5";
  by-version."tiny-lr-fork"."0.0.5" = self.buildNodePackage {
    name = "tiny-lr-fork-0.0.5";
    version = "0.0.5";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/tiny-lr-fork/-/tiny-lr-fork-0.0.5.tgz";
      name = "tiny-lr-fork-0.0.5.tgz";
      sha1 = "1e99e1e2a8469b736ab97d97eefa98c71f76ed0a";
    };
    deps = {
      "qs-0.5.6" = self.by-version."qs"."0.5.6";
      "faye-websocket-0.4.4" = self.by-version."faye-websocket"."0.4.4";
      "noptify-0.0.3" = self.by-version."noptify"."0.0.3";
      "debug-0.7.4" = self.by-version."debug"."0.7.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."tmp"."0.0.23" =
    self.by-version."tmp"."0.0.23";
  by-version."tmp"."0.0.23" = self.buildNodePackage {
    name = "tmp-0.0.23";
    version = "0.0.23";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/tmp/-/tmp-0.0.23.tgz";
      name = "tmp-0.0.23.tgz";
      sha1 = "de874aa5e974a85f0a32cdfdbd74663cb3bd9c74";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."torrent-health"."https://github.com/xeoncore/torrent-health/archive/0.1.1.tar.gz" =
    self.by-version."torrent-health"."0.1.1";
  by-version."torrent-health"."0.1.1" = self.buildNodePackage {
    name = "torrent-health-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "https://github.com/xeoncore/torrent-health/archive/0.1.1.tar.gz";
      name = "torrent-health-0.1.1.tgz";
      sha256 = "0e8704d7fa31bfdca4472d820ce98b7cea72f4fcae7e980edc1a4c30eb97ec1e";
    };
    deps = {
      "async-0.9.2" = self.by-version."async"."0.9.2";
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "node-tracker-0.0.6" = self.by-version."node-tracker"."0.0.6";
      "q-1.1.2" = self.by-version."q"."1.1.2";
      "read-torrent-1.2.0" = self.by-version."read-torrent"."1.2.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "torrent-health" = self.by-version."torrent-health"."0.1.1";
  by-spec."torrent-stream"."^0.18.1" =
    self.by-version."torrent-stream"."0.18.1";
  by-version."torrent-stream"."0.18.1" = self.buildNodePackage {
    name = "torrent-stream-0.18.1";
    version = "0.18.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/torrent-stream/-/torrent-stream-0.18.1.tgz";
      name = "torrent-stream-0.18.1.tgz";
      sha1 = "e2e8ca44d81f16fbe5646e0ebb05f5418fea9bf6";
    };
    deps = {
      "bitfield-0.1.0" = self.by-version."bitfield"."0.1.0";
      "bittorrent-dht-3.2.1" = self.by-version."bittorrent-dht"."3.2.1";
      "bittorrent-tracker-2.12.1" = self.by-version."bittorrent-tracker"."2.12.1";
      "bncode-0.5.3" = self.by-version."bncode"."0.5.3";
      "compact2string-1.4.0" = self.by-version."compact2string"."1.4.0";
      "end-of-stream-0.1.5" = self.by-version."end-of-stream"."0.1.5";
      "hat-0.0.3" = self.by-version."hat"."0.0.3";
      "ip-0.3.3" = self.by-version."ip"."0.3.3";
      "ip-set-1.0.0" = self.by-version."ip-set"."1.0.0";
      "magnet-uri-2.0.1" = self.by-version."magnet-uri"."2.0.1";
      "mkdirp-0.3.5" = self.by-version."mkdirp"."0.3.5";
      "parse-torrent-4.1.0" = self.by-version."parse-torrent"."4.1.0";
      "peer-wire-swarm-0.9.2" = self.by-version."peer-wire-swarm"."0.9.2";
      "random-access-file-0.3.1" = self.by-version."random-access-file"."0.3.1";
      "rimraf-2.4.0" = self.by-version."rimraf"."2.4.0";
      "thunky-0.1.0" = self.by-version."thunky"."0.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."touch"."0.0.2" =
    self.by-version."touch"."0.0.2";
  by-version."touch"."0.0.2" = self.buildNodePackage {
    name = "touch-0.0.2";
    version = "0.0.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/touch/-/touch-0.0.2.tgz";
      name = "touch-0.0.2.tgz";
      sha1 = "a65a777795e5cbbe1299499bdc42281ffb21b5f4";
    };
    deps = {
      "nopt-1.0.10" = self.by-version."nopt"."1.0.10";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."tough-cookie".">=0.12.0" =
    self.by-version."tough-cookie"."1.2.0";
  by-version."tough-cookie"."1.2.0" = self.buildNodePackage {
    name = "tough-cookie-1.2.0";
    version = "1.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/tough-cookie/-/tough-cookie-1.2.0.tgz";
      name = "tough-cookie-1.2.0.tgz";
      sha1 = "9b7e9d98e769e80b5aa899d944fe44e02ebf82ad";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."tough-cookie"."^0.12.1" =
    self.by-version."tough-cookie"."0.12.1";
  by-version."tough-cookie"."0.12.1" = self.buildNodePackage {
    name = "tough-cookie-0.12.1";
    version = "0.12.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/tough-cookie/-/tough-cookie-0.12.1.tgz";
      name = "tough-cookie-0.12.1.tgz";
      sha1 = "8220c7e21abd5b13d96804254bd5a81ebf2c7d62";
    };
    deps = {
      "punycode-1.3.2" = self.by-version."punycode"."1.3.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."traverse".">=0.3.0 <0.4" =
    self.by-version."traverse"."0.3.9";
  by-version."traverse"."0.3.9" = self.buildNodePackage {
    name = "traverse-0.3.9";
    version = "0.3.9";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/traverse/-/traverse-0.3.9.tgz";
      name = "traverse-0.3.9.tgz";
      sha1 = "717b8f220cc0bb7b44e40514c22b2e8bbc70d8b9";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."tunnel-agent"."~0.2.0" =
    self.by-version."tunnel-agent"."0.2.0";
  by-version."tunnel-agent"."0.2.0" = self.buildNodePackage {
    name = "tunnel-agent-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/tunnel-agent/-/tunnel-agent-0.2.0.tgz";
      name = "tunnel-agent-0.2.0.tgz";
      sha1 = "6853c2afb1b2109e45629e492bde35f459ea69e8";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."tunnel-agent"."~0.3.0" =
    self.by-version."tunnel-agent"."0.3.0";
  by-version."tunnel-agent"."0.3.0" = self.buildNodePackage {
    name = "tunnel-agent-0.3.0";
    version = "0.3.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/tunnel-agent/-/tunnel-agent-0.3.0.tgz";
      name = "tunnel-agent-0.3.0.tgz";
      sha1 = "ad681b68f5321ad2827c4cfb1b7d5df2cfe942ee";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."tunnel-agent"."~0.4.0" =
    self.by-version."tunnel-agent"."0.4.0";
  by-version."tunnel-agent"."0.4.0" = self.buildNodePackage {
    name = "tunnel-agent-0.4.0";
    version = "0.4.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/tunnel-agent/-/tunnel-agent-0.4.0.tgz";
      name = "tunnel-agent-0.4.0.tgz";
      sha1 = "b1184e312ffbcf70b3b4c78e8c219de7ebb1c550";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."typedarray"."~0.0.5" =
    self.by-version."typedarray"."0.0.6";
  by-version."typedarray"."0.0.6" = self.buildNodePackage {
    name = "typedarray-0.0.6";
    version = "0.0.6";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/typedarray/-/typedarray-0.0.6.tgz";
      name = "typedarray-0.0.6.tgz";
      sha1 = "867ac74e3864187b1d3d47d996a78ec5c8830777";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."uglify-js"."~2.3" =
    self.by-version."uglify-js"."2.3.6";
  by-version."uglify-js"."2.3.6" = self.buildNodePackage {
    name = "uglify-js-2.3.6";
    version = "2.3.6";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/uglify-js/-/uglify-js-2.3.6.tgz";
      name = "uglify-js-2.3.6.tgz";
      sha1 = "fa0984770b428b7a9b2a8058f46355d14fef211a";
    };
    deps = {
      "async-0.2.10" = self.by-version."async"."0.2.10";
      "source-map-0.1.43" = self.by-version."source-map"."0.1.43";
      "optimist-0.3.7" = self.by-version."optimist"."0.3.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."uid-number"."0.0.5" =
    self.by-version."uid-number"."0.0.5";
  by-version."uid-number"."0.0.5" = self.buildNodePackage {
    name = "uid-number-0.0.5";
    version = "0.0.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/uid-number/-/uid-number-0.0.5.tgz";
      name = "uid-number-0.0.5.tgz";
      sha1 = "5a3db23ef5dbd55b81fce0ec9a2ac6fccdebb81e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."underscore"."1.6.x" =
    self.by-version."underscore"."1.6.0";
  by-version."underscore"."1.6.0" = self.buildNodePackage {
    name = "underscore-1.6.0";
    version = "1.6.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/underscore/-/underscore-1.6.0.tgz";
      name = "underscore-1.6.0.tgz";
      sha1 = "8b38b10cacdef63337b8b24e4ff86d45aea529a8";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."underscore"."^1.6.0" =
    self.by-version."underscore"."1.8.3";
  by-version."underscore"."1.8.3" = self.buildNodePackage {
    name = "underscore-1.8.3";
    version = "1.8.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/underscore/-/underscore-1.8.3.tgz";
      name = "underscore-1.8.3.tgz";
      sha1 = "4f3fb53b106e6097fcf9cb4109f2a5e9bdfa5022";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "underscore" = self.by-version."underscore"."1.8.3";
  by-spec."underscore"."~1.4.4" =
    self.by-version."underscore"."1.4.4";
  by-version."underscore"."1.4.4" = self.buildNodePackage {
    name = "underscore-1.4.4";
    version = "1.4.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/underscore/-/underscore-1.4.4.tgz";
      name = "underscore-1.4.4.tgz";
      sha1 = "61a6a32010622afa07963bf325203cf12239d604";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."underscore"."~1.7.0" =
    self.by-version."underscore"."1.7.0";
  by-version."underscore"."1.7.0" = self.buildNodePackage {
    name = "underscore-1.7.0";
    version = "1.7.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/underscore/-/underscore-1.7.0.tgz";
      name = "underscore-1.7.0.tgz";
      sha1 = "6bbaf0877500d36be34ecaa584e0db9fef035209";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."underscore.string".">=2.3.3" =
    self.by-version."underscore.string"."3.1.1";
  by-version."underscore.string"."3.1.1" = self.buildNodePackage {
    name = "underscore.string-3.1.1";
    version = "3.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/underscore.string/-/underscore.string-3.1.1.tgz";
      name = "underscore.string-3.1.1.tgz";
      sha1 = "0cdd6bcad0c046fd7663d305d8a785b5da10f335";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."underscore.string"."~2.2.1" =
    self.by-version."underscore.string"."2.2.1";
  by-version."underscore.string"."2.2.1" = self.buildNodePackage {
    name = "underscore.string-2.2.1";
    version = "2.2.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/underscore.string/-/underscore.string-2.2.1.tgz";
      name = "underscore.string-2.2.1.tgz";
      sha1 = "d7c0fa2af5d5a1a67f4253daee98132e733f0f19";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."underscore.string"."~2.3.3" =
    self.by-version."underscore.string"."2.3.3";
  by-version."underscore.string"."2.3.3" = self.buildNodePackage {
    name = "underscore.string-2.3.3";
    version = "2.3.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/underscore.string/-/underscore.string-2.3.3.tgz";
      name = "underscore.string-2.3.3.tgz";
      sha1 = "71c08bf6b428b1133f37e78fa3a21c82f7329b0d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."underscore.string"."~2.4.0" =
    self.by-version."underscore.string"."2.4.0";
  by-version."underscore.string"."2.4.0" = self.buildNodePackage {
    name = "underscore.string-2.4.0";
    version = "2.4.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/underscore.string/-/underscore.string-2.4.0.tgz";
      name = "underscore.string-2.4.0.tgz";
      sha1 = "8cdd8fbac4e2d2ea1e7e2e8097c42f442280f85b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."unzip"."~0.1.9" =
    self.by-version."unzip"."0.1.11";
  by-version."unzip"."0.1.11" = self.buildNodePackage {
    name = "unzip-0.1.11";
    version = "0.1.11";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/unzip/-/unzip-0.1.11.tgz";
      name = "unzip-0.1.11.tgz";
      sha1 = "89749c63b058d7d90d619f86b98aa1535d3b97f0";
    };
    deps = {
      "fstream-0.1.31" = self.by-version."fstream"."0.1.31";
      "pullstream-0.4.1" = self.by-version."pullstream"."0.4.1";
      "binary-0.3.0" = self.by-version."binary"."0.3.0";
      "readable-stream-1.0.33" = self.by-version."readable-stream"."1.0.33";
      "setimmediate-1.0.2" = self.by-version."setimmediate"."1.0.2";
      "match-stream-0.0.2" = self.by-version."match-stream"."0.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."update-notifier"."0.2.0" =
    self.by-version."update-notifier"."0.2.0";
  by-version."update-notifier"."0.2.0" = self.buildNodePackage {
    name = "update-notifier-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/update-notifier/-/update-notifier-0.2.0.tgz";
      name = "update-notifier-0.2.0.tgz";
      sha1 = "a010c928adcf02090b8e0ce7fef6fb0a7cacc34a";
    };
    deps = {
      "chalk-0.5.1" = self.by-version."chalk"."0.5.1";
      "configstore-0.3.2" = self.by-version."configstore"."0.3.2";
      "latest-version-0.2.0" = self.by-version."latest-version"."0.2.0";
      "semver-diff-0.1.0" = self.by-version."semver-diff"."0.1.0";
      "string-length-0.1.2" = self.by-version."string-length"."0.1.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."update-notifier"."~0.2.0" =
    self.by-version."update-notifier"."0.2.2";
  by-version."update-notifier"."0.2.2" = self.buildNodePackage {
    name = "update-notifier-0.2.2";
    version = "0.2.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/update-notifier/-/update-notifier-0.2.2.tgz";
      name = "update-notifier-0.2.2.tgz";
      sha1 = "e69b3a784b4e686a2acd98f5e66944591996e187";
    };
    deps = {
      "chalk-0.5.1" = self.by-version."chalk"."0.5.1";
      "configstore-0.3.2" = self.by-version."configstore"."0.3.2";
      "is-npm-1.0.0" = self.by-version."is-npm"."1.0.0";
      "latest-version-1.0.0" = self.by-version."latest-version"."1.0.0";
      "semver-diff-2.0.0" = self.by-version."semver-diff"."2.0.0";
      "string-length-1.0.0" = self.by-version."string-length"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."upnp-device-client"."^1.0.0" =
    self.by-version."upnp-device-client"."1.0.0";
  by-version."upnp-device-client"."1.0.0" = self.buildNodePackage {
    name = "upnp-device-client-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/upnp-device-client/-/upnp-device-client-1.0.0.tgz";
      name = "upnp-device-client-1.0.0.tgz";
      sha1 = "b989af8ce849d88fe5bbae68723ae9649c4bdf52";
    };
    deps = {
      "concat-stream-1.4.8" = self.by-version."concat-stream"."1.4.8";
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "elementtree-0.1.6" = self.by-version."elementtree"."0.1.6";
      "network-address-1.0.0" = self.by-version."network-address"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."upnp-mediarenderer-client"."git+https://github.com/thibauts/node-upnp-mediarenderer-client.git" =
    self.by-version."upnp-mediarenderer-client"."1.2.1";
  by-version."upnp-mediarenderer-client"."1.2.1" = self.buildNodePackage {
    name = "upnp-mediarenderer-client-1.2.1";
    version = "1.2.1";
    bin = false;
    src = fetchgit {
      url = "https://github.com/thibauts/node-upnp-mediarenderer-client.git";
      rev = "c0ca0c63b627aef3501820f61b47b7c4887ef16d";
      sha256 = "24ed78ead8aedb153400cc90ab23044b6f4f4f89153dd3b9cbdf153593ec1d49";
    };
    deps = {
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "elementtree-0.1.6" = self.by-version."elementtree"."0.1.6";
      "upnp-device-client-1.0.0" = self.by-version."upnp-device-client"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "upnp-mediarenderer-client" = self.by-version."upnp-mediarenderer-client"."1.2.1";
  by-spec."user-home"."^1.0.0" =
    self.by-version."user-home"."1.1.1";
  by-version."user-home"."1.1.1" = self.buildNodePackage {
    name = "user-home-1.1.1";
    version = "1.1.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/user-home/-/user-home-1.1.1.tgz";
      name = "user-home-1.1.1.tgz";
      sha1 = "2b5be23a32b63a7c9deb8d0f28d485724a3df190";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."uuid"."^2.0.1" =
    self.by-version."uuid"."2.0.1";
  by-version."uuid"."2.0.1" = self.buildNodePackage {
    name = "uuid-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/uuid/-/uuid-2.0.1.tgz";
      name = "uuid-2.0.1.tgz";
      sha1 = "c2a30dedb3e535d72ccf82e343941a50ba8533ac";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."uuid"."~1.4.1" =
    self.by-version."uuid"."1.4.2";
  by-version."uuid"."1.4.2" = self.buildNodePackage {
    name = "uuid-1.4.2";
    version = "1.4.2";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/uuid/-/uuid-1.4.2.tgz";
      name = "uuid-1.4.2.tgz";
      sha1 = "453019f686966a6df83cdc5244e7c990ecc332fc";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."verror"."^1.4.0" =
    self.by-version."verror"."1.6.0";
  by-version."verror"."1.6.0" = self.buildNodePackage {
    name = "verror-1.6.0";
    version = "1.6.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/verror/-/verror-1.6.0.tgz";
      name = "verror-1.6.0.tgz";
      sha1 = "7d13b27b1facc2e2da90405eb5ea6e5bdd252ea5";
    };
    deps = {
      "extsprintf-1.2.0" = self.by-version."extsprintf"."1.2.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."weak-map"."^1.0.4" =
    self.by-version."weak-map"."1.0.5";
  by-version."weak-map"."1.0.5" = self.buildNodePackage {
    name = "weak-map-1.0.5";
    version = "1.0.5";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/weak-map/-/weak-map-1.0.5.tgz";
      name = "weak-map-1.0.5.tgz";
      sha1 = "79691584d98607f5070bd3b70a40e6bb22e401eb";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."websocket-driver".">=0.5.1" =
    self.by-version."websocket-driver"."0.5.4";
  by-version."websocket-driver"."0.5.4" = self.buildNodePackage {
    name = "websocket-driver-0.5.4";
    version = "0.5.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/websocket-driver/-/websocket-driver-0.5.4.tgz";
      name = "websocket-driver-0.5.4.tgz";
      sha1 = "4c65278c92929384eacfcd908d3e9e0a5691c29e";
    };
    deps = {
      "websocket-extensions-0.1.1" = self.by-version."websocket-extensions"."0.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."websocket-extensions".">=0.1.1" =
    self.by-version."websocket-extensions"."0.1.1";
  by-version."websocket-extensions"."0.1.1" = self.buildNodePackage {
    name = "websocket-extensions-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/websocket-extensions/-/websocket-extensions-0.1.1.tgz";
      name = "websocket-extensions-0.1.1.tgz";
      sha1 = "76899499c184b6ef754377c2dbb0cd6cb55d29e7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."which"."1" =
    self.by-version."which"."1.1.1";
  by-version."which"."1.1.1" = self.buildNodePackage {
    name = "which-1.1.1";
    version = "1.1.1";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/which/-/which-1.1.1.tgz";
      name = "which-1.1.1.tgz";
      sha1 = "9ce512459946166e12c083f08ec073380fc8cbbb";
    };
    deps = {
      "is-absolute-0.1.7" = self.by-version."is-absolute"."0.1.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."which"."~1.0.5" =
    self.by-version."which"."1.0.9";
  by-version."which"."1.0.9" = self.buildNodePackage {
    name = "which-1.0.9";
    version = "1.0.9";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/which/-/which-1.0.9.tgz";
      name = "which-1.0.9.tgz";
      sha1 = "460c1da0f810103d0321a9b633af9e575e64486f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."win-release"."^1.0.0" =
    self.by-version."win-release"."1.0.0";
  by-version."win-release"."1.0.0" = self.buildNodePackage {
    name = "win-release-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/win-release/-/win-release-1.0.0.tgz";
      name = "win-release-1.0.0.tgz";
      sha1 = "8993308dedbd8d30ad5594b6b7382a8c1d96ae5a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."windows-no-runnable"."~0.0.6" =
    self.by-version."windows-no-runnable"."0.0.6";
  by-version."windows-no-runnable"."0.0.6" = self.buildNodePackage {
    name = "windows-no-runnable-0.0.6";
    version = "0.0.6";
    bin = true;
    src = fetchurl {
      url = "http://registry.npmjs.org/windows-no-runnable/-/windows-no-runnable-0.0.6.tgz";
      name = "windows-no-runnable-0.0.6.tgz";
      sha1 = "91e5129088330a0fe248520cee12d1ad6bb4ddfb";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."wordwrap"."~0.0.2" =
    self.by-version."wordwrap"."0.0.3";
  by-version."wordwrap"."0.0.3" = self.buildNodePackage {
    name = "wordwrap-0.0.3";
    version = "0.0.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/wordwrap/-/wordwrap-0.0.3.tgz";
      name = "wordwrap-0.0.3.tgz";
      sha1 = "a3d5da6cd5c0bc0008d37234bbaf1bed63059107";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."wrappy"."1" =
    self.by-version."wrappy"."1.0.1";
  by-version."wrappy"."1.0.1" = self.buildNodePackage {
    name = "wrappy-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/wrappy/-/wrappy-1.0.1.tgz";
      name = "wrappy-1.0.1.tgz";
      sha1 = "1e65969965ccbc2db4548c6b84a6f2c5aedd4739";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."xdg-basedir"."^1.0.0" =
    self.by-version."xdg-basedir"."1.0.1";
  by-version."xdg-basedir"."1.0.1" = self.buildNodePackage {
    name = "xdg-basedir-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/xdg-basedir/-/xdg-basedir-1.0.1.tgz";
      name = "xdg-basedir-1.0.1.tgz";
      sha1 = "14ff8f63a4fdbcb05d5b6eea22b36f3033b9f04e";
    };
    deps = {
      "user-home-1.1.1" = self.by-version."user-home"."1.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."xml2js"."~0.2.3" =
    self.by-version."xml2js"."0.2.8";
  by-version."xml2js"."0.2.8" = self.buildNodePackage {
    name = "xml2js-0.2.8";
    version = "0.2.8";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/xml2js/-/xml2js-0.2.8.tgz";
      name = "xml2js-0.2.8.tgz";
      sha1 = "9b81690931631ff09d1957549faf54f4f980b3c2";
    };
    deps = {
      "sax-0.5.8" = self.by-version."sax"."0.5.8";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."xmlbuilder"."0.4.x" =
    self.by-version."xmlbuilder"."0.4.3";
  by-version."xmlbuilder"."0.4.3" = self.buildNodePackage {
    name = "xmlbuilder-0.4.3";
    version = "0.4.3";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/xmlbuilder/-/xmlbuilder-0.4.3.tgz";
      name = "xmlbuilder-0.4.3.tgz";
      sha1 = "c4614ba74e0ad196e609c9272cd9e1ddb28a8a58";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."xmlbuilder"."2.6.x" =
    self.by-version."xmlbuilder"."2.6.4";
  by-version."xmlbuilder"."2.6.4" = self.buildNodePackage {
    name = "xmlbuilder-2.6.4";
    version = "2.6.4";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/xmlbuilder/-/xmlbuilder-2.6.4.tgz";
      name = "xmlbuilder-2.6.4.tgz";
      sha1 = "8123ac1576d9c66918f410496f1fe9f028b8ca3e";
    };
    deps = {
      "lodash-3.9.3" = self.by-version."lodash"."3.9.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."xmldom"."0.1.x" =
    self.by-version."xmldom"."0.1.19";
  by-version."xmldom"."0.1.19" = self.buildNodePackage {
    name = "xmldom-0.1.19";
    version = "0.1.19";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/xmldom/-/xmldom-0.1.19.tgz";
      name = "xmldom-0.1.19.tgz";
      sha1 = "631fc07776efd84118bf25171b37ed4d075a0abc";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."xmlrpc"."*" =
    self.by-version."xmlrpc"."1.3.1";
  by-version."xmlrpc"."1.3.1" = self.buildNodePackage {
    name = "xmlrpc-1.3.1";
    version = "1.3.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/xmlrpc/-/xmlrpc-1.3.1.tgz";
      name = "xmlrpc-1.3.1.tgz";
      sha1 = "3aa582086fef530cfe1dcdaa0c4c9ddc5d0e4451";
    };
    deps = {
      "sax-0.6.1" = self.by-version."sax"."0.6.1";
      "xmlbuilder-2.6.4" = self.by-version."xmlbuilder"."2.6.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."xtend"."^4.0.0" =
    self.by-version."xtend"."4.0.0";
  by-version."xtend"."4.0.0" = self.buildNodePackage {
    name = "xtend-4.0.0";
    version = "4.0.0";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/xtend/-/xtend-4.0.0.tgz";
      name = "xtend-4.0.0.tgz";
      sha1 = "8bc36ff87aedbe7ce9eaf0bca36b2354a743840f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."zip"."~1.1.1" =
    self.by-version."zip"."1.1.1";
  by-version."zip"."1.1.1" = self.buildNodePackage {
    name = "zip-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/zip/-/zip-1.1.1.tgz";
      name = "zip-1.1.1.tgz";
      sha1 = "faf3b9f2fcfe03773dd4a18099e0364c95167cb6";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."zip-stream"."~0.3.0" =
    self.by-version."zip-stream"."0.3.7";
  by-version."zip-stream"."0.3.7" = self.buildNodePackage {
    name = "zip-stream-0.3.7";
    version = "0.3.7";
    bin = false;
    src = fetchurl {
      url = "http://registry.npmjs.org/zip-stream/-/zip-stream-0.3.7.tgz";
      name = "zip-stream-0.3.7.tgz";
      sha1 = "c84d057eb0bcc0139747bd3c6c97280bcf5f2bb2";
    };
    deps = {
      "buffer-crc32-0.2.5" = self.by-version."buffer-crc32"."0.2.5";
      "crc32-stream-0.2.0" = self.by-version."crc32-stream"."0.2.0";
      "debug-1.0.4" = self.by-version."debug"."1.0.4";
      "deflate-crc32-stream-0.1.2" = self.by-version."deflate-crc32-stream"."0.1.2";
      "lodash-2.4.2" = self.by-version."lodash"."2.4.2";
      "readable-stream-1.0.33" = self.by-version."readable-stream"."1.0.33";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
}
