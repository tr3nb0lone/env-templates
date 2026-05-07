let
  nixpkgs = fetchTarball "http://github.com/NixOS/nixpkgs/tarball/c6245e83d836d0433170a16eb185cefe0572f8b8"; # pinnig to a certain point where this was "unstable"
  pkgs = import nixpkgs {
    config = { };
    overlays = [ ];
  };
in

pkgs.mkShellNoCC {
  packages = with pkgs; [
    nuclear
    yewtube
  ];
}
