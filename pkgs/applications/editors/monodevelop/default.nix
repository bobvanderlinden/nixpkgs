{ stdenv, fetchurl, fetchgit, fetchNuGet
, autoconf, automake, pkgconfig, shared_mime_info, intltool
, glib, mono, gtk-sharp, gnome, gnome-sharp, unzip
, dotnetPackages
}:

stdenv.mkDerivation rec {
  version = "5.9.0.431";
  revision = "7560726734fc7267de2fa9abed2509968deefaa8";
  name = "monodevelop-${version}";

  src = fetchurl {
    url = "http://download.mono-project.com/sources/monodevelop/${name}.tar.bz2";
    sha256 = "1bgqvlfi6pilj2zxsviqilh63qq98wsijqdiqwpkqchcw741zlyn";
  };

  nunit2510 = fetchurl {
    url = "http://launchpad.net/nunitv2/2.5/2.5.10/+download/NUnit-2.5.10.11092.zip";
    sha256 = "0k5h5bz1p2v3d0w0hpkpbpvdkcszgp8sr9ik498r1bs72w5qlwnc";
  };

  postPatch = ''
    # From https://bugzilla.xamarin.com/show_bug.cgi?id=23696#c19

    # it seems parts of MonoDevelop 5.2+ need NUnit 2.6.4, which isn't included
    # (?), so download it and put it in the right place in the tree
    mkdir packages
    cp -rv ${dotnetPackages.nUnit}/opt/dotnet/* -d packages/NUnit.2.6.3
    cp -rv ${dotnetPackages.nUnitRunners}/opt/dotnet/* -d packages/NUnit.Runners.2.6.3

    # cecil needs NUnit 2.5.10 - this is also missing from the tar
    unzip -j ${nunit2510} -d external/cecil/Test/libs/nunit-2.5.10 NUnit-2.5.10.11092/bin/net-2.0/framework/\*

    # the tar doesn't include the nuget binary, so grab it from github and copy it
    # into the right place
    cp -vfR ${dotnetPackages.nuget_binary}/opt/dotnet/nuget-binary/* external/nuget-binary/

    # AspNet plugin requires these packages
    cp -rv ${dotnetPackages.systemWebMvcExtensions}/opt/dotnet/* -d packages/System.Web.Mvc.Extensions.Mvc.4.1.0.9
    cp -rv ${dotnetPackages.microsoftAspNetMvc}/opt/dotnet/* -d packages/Microsoft.AspNet.Mvc.5.2.2
    cp -rv ${dotnetPackages.microsoftAspNetRazor}/opt/dotnet/* -d packages/Microsoft.AspNet.Razor.3.2.2
    cp -rv ${dotnetPackages.microsoftAspNetWebPages}/opt/dotnet/* -d packages/Microsoft.AspNet.WebPages.3.2.2
    cp -rv ${dotnetPackages.microsoftWebInfrastructure}/opt/dotnet/* -d packages/Microsoft.Web.Infrastructure.1.0.0.0
  '';

  buildInputs = [
    autoconf automake pkgconfig shared_mime_info intltool
    mono gtk-sharp gnome-sharp unzip
  ];

  preConfigure = "patchShebangs ./configure";

  preBuild = ''
    cat > ./buildinfo <<EOF
    Release ID: ${version}
    Git revision: ${revision}
    Build date: 1970-01-01 00:00:01
    EOF
  '';

  postInstall = ''
    for prog in monodevelop mdtool; do
    patch -p 0 $out/bin/$prog <<EOF
    2a3,5
    > export MONO_GAC_PREFIX=${gnome-sharp}:${gtk-sharp}:\$MONO_GAC_PREFIX
    > export PATH=${mono}/bin:\$PATH
    > export LD_LIBRARY_PATH=${glib}/lib:${gnome.libgnomeui}/lib:${gnome.gnome_vfs}/lib:${gnome-sharp}/lib:${gtk-sharp}/lib:${gtk-sharp.gtk}/lib:\$LD_LIBRARY_PATH
    > 
    EOF
    done
  '';

  dontStrip = true;

  meta = with stdenv.lib; {
    platforms = platforms.linux;
    maintainers = with maintainers; [ obadz ];
  };
}
