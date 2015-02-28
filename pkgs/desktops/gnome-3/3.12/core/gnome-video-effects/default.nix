{ stdenv, fetchurl, pkgconfig, file, intltool }:

stdenv.mkDerivation rec {
  name = "gnome-video-effects-0.4.1";

  src = fetchurl {
    url = "mirror://gnome/sources/gnome-video-effects/0.4/${name}.tar.xz";
    sha256 = "34be42713a97caf698b84ce7e1158aa21cc0977df7f7a7477cece226bc8d844a";
  };

  buildInputs = [ pkgconfig intltool ];

  meta = with stdenv.lib; {
    homepage = https://wiki.gnome.org/Projects/GnomeVideoEffects;
    description = "A collection of GStreamer effects to be used in different GNOME Modules";
    maintainers = with maintainers; [ bobvanderlinden ];
    license = licenses.lgpl2;
    platforms = platforms.linux;
  };
}
