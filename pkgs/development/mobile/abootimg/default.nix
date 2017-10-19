{ stdenv, fetchFromGitHub, utillinux }:

stdenv.mkDerivation rec {
  name = "abootimg-${version}";
  version = "2015-01-16";

  src = fetchFromGitHub {
    owner = "codeworkx";
    repo = "abootimg";
    rev = "543ab92c24c72c8323843bff43a53629530d9141";
    sha256 = "055wskqjgrd12811n553g9ysf3jvpks26wgx44yb33x8xg11imy8";
  };

  buildInputs = [ utillinux ];

  installPhase = ''
    mkdir -p $out/bin
    cp abootimg $out/bin/
  '';

  meta = with stdenv.lib; {
    description = "A tool to manipulate Android Boot Images";
    homepage = https://github.com/codeworkx/abootimg;
    license = licenses.gpl2;
    platforms = platforms.unix;
    hydraPlatforms = [];
    maintainers = with maintainers; [ bobvanderlinden ];
  };
}
