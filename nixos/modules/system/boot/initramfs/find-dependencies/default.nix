{ rustPlatform }:
rustPlatform.buildRustPackage rec {
  pname = "find-dependencies";
  version = "0.1.0";

  src = ./.;

  cargoHash = "sha256-9njo5F2ZDLZwoN+s5vU+RGPJc6zlkdhQV3FyTqgaFjo=";
}
