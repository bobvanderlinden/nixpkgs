{ lib, fetchFromGitHub, pulseaudio, python3Packages
, vorbis-tools, sox, lame, flac, faac, ffmpeg }:
python3Packages.buildPythonApplication rec {
  pname = "mkchromecast";
  version = "unstable-2019-04-07";
  src = fetchFromGitHub {
    owner  = "muammar";
    repo   = "mkchromecast";
    rev    = "5872a246f0610b74fc2b197eb02dc91b96fb68cc";
    sha256 = "05ldgx583s4b3qqn2r3sj7wjmfdqndkm59g2bwdkpz7pbcahkfmr";
  };

  propagatedBuildInputs = with python3Packages; [
    PyChromecast psutil mutagen flask pyqt5 netifaces requests soco
  ] ++ [
    pulseaudio vorbis-tools sox lame flac faac ffmpeg
  ];

  doCheck = false;

  meta = with lib; {
    homepage = https://mkchromecast.com/;
    description = "Cast macOS and Linux Audio/Video to your Google Cast and Sonos Devices";
    license = licenses.mit;
    maintainers = with maintainers; [ bobvanderlinden ];
  };
}
