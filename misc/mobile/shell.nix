# the Tarball
let
  nixpkgs = fetchTarball "http://github.com/NixOS/nixpkgs/tarball/c6245e83d836d0433170a16eb185cefe0572f8b8";
  pkgs = import nixpkgs { config = {}; overlays = []; };
in

pkgs.mkShellNoCC {
  packages = with pkgs; [
	scrcpy
  ];
}
