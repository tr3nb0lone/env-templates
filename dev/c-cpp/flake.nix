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
          gcc
          clang

          linuxHeaders
          llvm

          pkg-config
          fmt

        ];

        # https://stackoverflow.com/questions/77454504/
        # https://discourse.nixos.org/t/linux-headers-not-found-dont-know-how-to-install/30508/3

        # CPATH = "${pkgs.CHANGE-ME}/";
        # C_INCLUDE_PATH = "${pkgs.<CHANGE-ME>}/include";

        hardeningDisable = [ "all" ];

      };
    };
}
