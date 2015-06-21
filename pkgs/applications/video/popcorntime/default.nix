{ stdenv, pkgs, fetchurl, fetchgit, buildEnv,
  writeScript, makeWrapper,
  git, zip, nodejs,
  node_webkit ? pkgs.node_webkit_0_9, 
  grunt-cli ? pkgs.nodePackages.grunt-cli
}:
let
  version = "0.3.7.2";
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

  node_env = buildEnv {
    name = "node_env";
    paths = with nodePackages; [ URIjs adm-zip airplay-js async chromecast-js dlna-js upnp-mediarenderer-client i18n iconv-lite jschardet json-rpc2 memoizee mime mkdirp moment mv native-dns nedb node-captions node-webkit-fdialogs peerflix popcorn-opensubtitles q read-torrent readdirp request rimraf semver sha1 tar temp torrent-health underscore ];
    pathsToLink = [ "/lib" ];
    ignoreCollisions = true;
  };

  grunt_env = buildEnv {
    name = "grunt_env";
    paths = with nodePackages; [ grunt grunt-bower-clean grunt-contrib-clean grunt-contrib-compress grunt-contrib-jshint grunt-contrib-stylus grunt-contrib-watch grunt-exec grunt-githooks grunt-jsbeautifier grunt-node-webkit-builder grunt-shell load-grunt-tasks ];
    pathsToLink = [ "/lib" ];
    ignoreCollisions = true;
  };

  bowerPackages = import ./bower.nix {
    inherit (pkgs) fetchbower buildEnv;
  };

  popcorntimeFiles = stdenv.mkDerivation rec {
    name = "popcorntime-files-${version}";
    src = fetchgit {
      url = "https://git.popcorntime.io/popcorntime/desktop.git";
      rev = "refs/tags/v${version}";
      sha256 = "1r2d553hc8fzq3lgbfhy9l01sf0r27jcij8a6m7zy0iwn3qpvwb1";
      leaveDotGit = true;
    };

    buildInputs = [ grunt-cli git zip makeWrapper ] ++
      (with nodePackages; [ bower nw-gyp stylus ]);

    buildPhase = ''
      export HOME="$PWD/../home"
      mkdir -p $HOME

      echo "Running bower..."
      # Workaround: bower copies packages from cache, keeping the permission.
      #             Since the cache is read-only for owner, bower cannot write .bower.json back to its local equivalent.
      #             To circumvent this we first copy the cache over to a local directory and make it writable.
      #             This inconvenience is described here: https://github.com/bower/bower/issues/1192
      mkdir -p src/app/vendor
      cp -rL ${bowerPackages} ./.bower
      chmod -R u+w ./.bower
      bower install \
        --offline \
        --config.storage.packages=.bower/packages \
        --config.storage.registry=.bower/registry \
        --config.interactive=false
      rm -rf .bower

      echo "Running grunt..."
      # Workaround: grunt packages must be placed in the local node_modules (./node_modules/).
      #             We link the grunt packages from the grunt_env to ./node_modules/
      ln -s ${grunt_env}/lib/node_modules/ ./
      grunt stylus:offical stylus:third_party bower_clean
      rm node_modules
    '';

    installPhase = ''
      export NWPATH="${node_webkit}/share/node-webkit";

      mkdir -p $out/popcorntime

      zip -r $out/popcorntime/package.nw *

      cat $NWPATH/nw $out/popcorntime/package.nw > $out/popcorntime/Popcorn-Time
      cp $NWPATH/nw.pak $out/popcorntime/
      ln -s ${libffmpegsumo} $out/popcorntime/libffmpegsumo.so
      chmod +x $out/popcorntime/Popcorn-Time
      rm $out/popcorntime/package.nw
    '';

    postFixup = ''
      wrapProgram $out/popcorntime/Popcorn-Time \
        --prefix NODE_PATH : ${node_env}/lib/node_modules
    '';
  };

  popcorntimePackages = {
    x86_64-linux = fetchurl {
      url = "https://get.popcorntime.io/build/Popcorn-Time-${version}-Linux64.tar.xz";
      sha256 = "0lm9k4fr73a9p00i3xj2ywa4wvjf9csadm0pcz8d6imwwq44sa8b";
    };
    i686-linux = fetchurl {
      url = "https://get.popcorntime.io/build/Popcorn-Time-${version}-Linux32.tar.xz";
      sha256 = "1dz1cp31qbwamm9pf8ydmzzhnb6d9z73bigdv3y74dgicz3dpr91";
    };
  };

  libffmpegsumo = stdenv.mkDerivation {
    name = "libffmpegsumo";
    src = popcorntimePackages."${stdenv.system}";
    sourceRoot = ".";
    dontBuild = true;
    installPhase = ''
      cp libffmpegsumo.so $out
    '';
  };
in
stdenv.mkDerivation rec {
    inherit version;
    name = "popcorntime-" + version;

    src = popcorntimeFiles;

    dontBuild = true;

    buildInputs = [ makeWrapper ];

    installPhase = ''
      mkdir -p $out/bin
      makeWrapper ${popcorntimeFiles}/popcorntime/Popcorn-Time $out/bin/popcorntime
    '';

    dontStrip = true;
    dontPatchELF = true;

    meta = with stdenv.lib; {
      homepage = http://popcorntime.io/;
      description = "Popcorn-Time";
      license = stdenv.lib.licenses.gpl2;
      platforms = platforms.linux;
      maintainers = with maintainers; [ bobvanderlinden ];
    };
}
