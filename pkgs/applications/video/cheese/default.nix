{stdenv, fetchurl, makeWrapper
, pkgconfig, glib, gtk3
, dbus, dbus_glib
, vala
, gstreamer, gst
, intltool, itstool, libtool
, systemd
, clutter, clutter-gtk, clutter-gst
, librsvg, libcanberra_gtk3
, gnome_icon_theme, hicolor_icon_theme, gnome_icon_theme_symbolic, gnome3}:

stdenv.mkDerivation rec {
  name = "cheese";
  version = "3.12.2";
  src = fetchurl {
    url = "mirror://gnome/sources/${name}/3.12/${name}-${version}.tar.xz";
    sha256 = "a7b45369e75e222e3bd5e9a4408a0e6c230be0c49d359a387d36a42e17e3bc64";
  };

  # Cheese 3.15.3 requires GTK+ 3.13.4
  #version = "3.15.3";
  #src = fetchurl {
  #  url = "mirror://gnome/sources/${name}/3.15/${name}-${version}.tar.xz";
  #  sha256 = "f6891b06a3e8f98ebf09bdfd77fe4cbb2d4a216476dd1d5046de3daa1615fdad";
  #};

  buildInputs = [
    makeWrapper
    pkgconfig glib gtk3 dbus dbus_glib vala
    intltool itstool libtool
    systemd clutter-gtk clutter-gst gtk3 clutter
    librsvg libcanberra_gtk3
    ] ++ (with gnome3; [
      gnome_desktop gsettings_desktop_schemas gnome-video-effects gnome_themes_standard
    ]) ++ (with gst; [
      gstreamer
      gst-python gst-editing-services
      gst-plugins-base gst-plugins-good
      gst-plugins-bad gst-plugins-ugly gst-libav
    ]);

  preFixup = ''
    for f in $out/bin/*; do
      wrapProgram $f \
        --prefix GST_PLUGIN_SYSTEM_PATH ":" "$GST_PLUGIN_SYSTEM_PATH" \
        --prefix XDG_DATA_DIRS : "${gnome3.gnome_themes_standard}:${gnome3.gnome-video-effects}/share:$XDG_ICON_DIRS:$GSETTINGS_SCHEMAS_PATH:$out/share" \
        --prefix GIO_EXTRA_MODULES : "${gnome3.dconf}/lib/gio/modules"
    done
  '';

  meta = {
    homepage = http://www.gnome.org/projects/cheese/;
    description = "Use your webcam to take photos and videos, apply fancy special effects and share the fun with others";
  };
}
