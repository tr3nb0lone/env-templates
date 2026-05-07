# flake.nix
{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable"; # unstable nixpkgs
  };

  outputs =
    { nixpkgs, ... }:
    let
      system = "x86_64-linux"; # can be: "aarch64-linux" / "x86_64-darwin" / "aarch64-darwin"
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      devShells.${system}.default = pkgs.mkShell {

        packages = with pkgs; [

          # standard toolkit
          corepack # Corepack to pin the package manager (NPM/YARN/PNPM)
          nodejs # nixpkgs provides a "nodejs" package that corresponds to the current LTS version of nodejs, but you can specify a version (i.e node_20) if necessary
          yarn
          pnpm # a faster alternative to npm and yarn, with a less adopted toolchain

          # optionally required by your code editor to lint and format your code
          nodePackages.prettier # formatter
          odePackages.eslint # linter

          # example package to serve a static nextjs export
          nodePackages.serve

          # language servers:
          typescript-language-server

          (pkgs.nodejs.override { enableNpm = false; }) # NodeJS without NPM
        ];

      };
    };
}
