{
  description = "BUKAMO: Maximalist Linux Home Manager Configuration";

  inputs = {
    nixpkgs = {
      url = "github:nixos/nixpkgs/nixos-unstable";
      rev = "164df5439994ffcdb9e98c8316a00831306669da";
    };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { nixpkgs, home-manager, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let pkgs = nixpkgs.legacyPackages.${system}; in
      {
        packages.homeConfigurations = {
          main = home-manager.lib.homeManagerConfiguration {
            inherit pkgs;

            modules = [
              ./home.nix
              ./packages/linux.nix
              ./programs/linux.nix
              ./files/linux.nix
            ];

            extraSpecialArgs = {
              username = "jsimmons";
              homeDirectory = "/Users/jsimmons";
              outputName = "main";
            };
          };
        };
      }
    );
}
