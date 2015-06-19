{ stdenv, pkgs, fetchurl, fetchgit,
  nodejs, node_webkit_0_9, writeScript
}:
let
  node_webkit = node_webkit_0_9;
  # When upgrading node.nix / node packages:
  #   fetch package.json from Zed's repository
  #   run `npm2nix package.json node.nix`
  #   and replace node.nix with new one
  nodePackages = import ../../../../pkgs/top-level/node-packages.nix {
    inherit pkgs;
    inherit (pkgs) stdenv nodejs fetchurl fetchgit;
    neededNatives = [ pkgs.python ] ++ pkgs.lib.optional pkgs.stdenv.isLinux pkgs.utillinux;
    self = nodePackages;
    generated = ./node.nix;
  };

  bowerPackages = import ./bower.nix {
    inherit (pkgs) fetchbower buildEnv;
  };

  popcorntimeSrc = fetchgit {
    url = "https://git.popcorntime.io/popcorntime/desktop.git";
    rev = "refs/tags/v0.3.7.2";
    sha256 = "1r2d553hc8fzq3lgbfhy9l01sf0r27jcij8a6m7zy0iwn3qpvwb1";
    leaveDotGit = true;
  };

  popcorntimeTarball = pkgs.runCommand "Popcorn-Time-0.3.7-2.tgz" { buildInputs = [ pkgs.nodejs ]; } ''
    mv `HOME=$PWD npm pack ${popcorntimeSrc}` $out
  '';

  popcorntimePackage = nodePackages.buildNodePackage {
    name = "Popcorn-Time-0.3.7-2";
    src = [ popcorntimeTarball ];
    buildInputs = [ pkgs.nodePackages.grunt-cli pkgs.nodePackages.bower pkgs.git ];
    flags = "--ignore-scripts";
    deps = [ nodePackages.by-spec."URIjs"."^1.13.2" nodePackages.by-spec."adm-zip"."https://github.com/xeoncore/adm-zip/archive/78f820330c776bca72aad3f22d127b357f57a609.tar.gz" nodePackages.by-spec."airplay-js"."git+https://git.popcorntime.io/mirrors/node-airplay-js.git" nodePackages.by-spec."async"."0.9.0" nodePackages.by-spec."chromecast-js"."git+https://git.popcorntime.io/mirrors/chromecast-js.git" nodePackages.by-spec."dlna-js"."git+https://git.popcorntime.io/mirrors/dlna-js.git" nodePackages.by-spec."upnp-mediarenderer-client"."git+https://github.com/thibauts/node-upnp-mediarenderer-client.git" nodePackages.by-spec."i18n"."0.5.0" nodePackages.by-spec."iconv-lite"."^0.4.3" nodePackages.by-spec."jschardet"."1.1.0" nodePackages.by-spec."json-rpc2"."^0.7.0" nodePackages.by-spec."memoizee"."^0.3.7" nodePackages.by-spec."mime"."1.2.11" nodePackages.by-spec."mkdirp"."*" nodePackages.by-spec."moment"."^2.6.0" nodePackages.by-spec."mv"."^2.0.3" nodePackages.by-spec."native-dns"."^0.7.0" nodePackages.by-spec."nedb"."0.10.11" nodePackages.by-spec."node-captions"."0.2.2" nodePackages.by-spec."node-webkit-fdialogs"."*" nodePackages.by-spec."peerflix"."git+https://git.popcorntime.io/mirrors/peerflix.git" nodePackages.by-spec."popcorn-opensubtitles"."git+https://git.popcorntime.io/popcorntime/opensubtitles.git#a7ad4445a2cc89e3f37d4fe4e6ac06186fd719ea" nodePackages.by-spec."q"."2.0.2" nodePackages.by-spec."read-torrent"."1.0.0" nodePackages.by-spec."readdirp"."*" nodePackages.by-spec."request"."^2.36.0" nodePackages.by-spec."rimraf"."2.2.8" nodePackages.by-spec."semver"."^2.3.1" nodePackages.by-spec."sha1"."1.1.0" nodePackages.by-spec."tar"."^1.0.3" nodePackages.by-spec."temp"."^0.8.1" nodePackages.by-spec."torrent-health"."https://github.com/xeoncore/torrent-health/archive/0.1.1.tar.gz" nodePackages.by-spec."underscore"."^1.6.0" ] ++ [
       nodePackages.by-spec."grunt-bower-clean"."^0.2.1" nodePackages.by-spec."grunt-contrib-clean"."^0.5.0" nodePackages.by-spec."grunt-contrib-compress"."^0.9.1" nodePackages.by-spec."grunt-contrib-jshint"."^0.10.0" nodePackages.by-spec."grunt-contrib-stylus"."0.16.0" nodePackages.by-spec."grunt-contrib-watch"."0.6.x" nodePackages.by-spec."grunt-exec"."0.4.x" nodePackages.by-spec."grunt-githooks"."^0.3.1" nodePackages.by-spec."grunt-jsbeautifier"."*" nodePackages.by-spec."grunt-legacy-log"."~0.1.0" nodePackages.by-spec."grunt-legacy-log-utils"."^0.1.1" nodePackages.by-spec."grunt-legacy-util"."~0.2.0" nodePackages.by-spec."grunt-node-webkit-builder"."0.1.x" nodePackages.by-spec."grunt-shell"."^1.1.1"
       nodePackages.by-spec."grunt"."0.4.5" nodePackages.by-spec."load-grunt-tasks"."0.4.0"
    ];
    peerDependencies = [];

    postConfigure = ''
      mkdir -p src/app/vendor
      echo "Bower cache: ${bowerPackages}"
      BOWER_ARGS="--config.storage.packages=${bowerPackages}/packages --config.storage.registry=${bowerPackages}/registry --config.interactive=false"
      bower install --offline $BOWER_ARGS || true

      mkdir -p node_modules
      ln -s $HOME/node_modules/grunt* node_modules/
      HOME=$PWD grunt css bower_clean
      rm -rf node_modules
    '';
  };

  executable = writeScript "popcorntime" ''
    #! ${stdenv.shell}
    ${node_webkit}/bin/nw ${popcorntimePackage}/lib/node_modules/Popcorn-Time/
  '';

  executableEnvironment = stdenv.mkDerivation rec {
      name = "popcorntime-" + version;
      version = "0.3.7-2";

      src = "${popcorntimePackage}/lib/node_modules/Popcorn-Time";

      buildInputs = [
        nodejs pkgs.nodePackages.grunt-cli pkgs.nodePackages.coffee-script
        node_webkit_0_9
      ];

      buildPhase = "";

      installPhase = ''
        mkdir -p $out/bin
        ln -s ${executable} $out/bin/popcorntime
      '';

      meta = with stdenv.lib; {
        homepage = http://popcorntime.io/;
        description = "Popcorn-Time";
        license = stdenv.lib.licenses.gpl2;
        platforms = platforms.linux;
        maintainers = with maintainers; [ bobvanderlinden ];
      };
  };
in executableEnvironment
