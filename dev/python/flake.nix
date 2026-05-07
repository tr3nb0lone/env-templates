{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable"; # unstable nixpkgs
  };

  outputs =
    { nixpkgs, ... }:
    let
      system = "x86_64-linux"; # can be swapped to: "aarch64-linux" / "x86_64-darwin" / "aarch64-darwin"
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      devShells.${system}.default = pkgs.mkShell {

        packages = with pkgs; [
          pytohn3
          poetry

          pyright
          fmt

        ];

      };
    };
}
