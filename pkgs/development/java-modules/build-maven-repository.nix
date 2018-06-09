{ system, lib, runCommand, writeText }:
with builtins;
with lib;
{ name ? "maven-repository"
, projectInfoFile
}:
let
  fetchurlBoot = import <nix/fetchurl.nix>;
  artifacts = lib.importJSON projectInfoFile;
  linkFarm = name: entries: runCommand name { preferLocalBuild = true; }
    ("mkdir -p $out/share/maven-repo; cd $out/share/maven-repo; \n" +
      (lib.concatMapStrings ({ source, directory, filename }: "mkdir -p ${directory}; ln -sf '${source}' '${directory}/${filename}';\n") entries));
  basename = path: baseNameOf "/${path}";
  dirname = path: removePrefix "/" (dirOf "/${path}");
in
linkFarm name (map (artifact: { source = fetchurlBoot { name = basename artifact.file; url = artifact.url; sha256 = artifact.sha256; }; directory = dirname artifact.file; filename = basename artifact.file; }) artifacts)