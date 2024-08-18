{
  description = "Owo bad";
  inputs = {
    # nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    stylix.url = "github:danth/stylix";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, stylix, ... }:
    let
      system = "x86_64-linux";
    in
    {
      nixosConfigurations.dragon = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          ./configuration.nix
        ];
      };

      nixosConfigurations.bad = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [ ./configuration.nix  ];
      };

      homeConfigurations.bad = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.${system};
        modules = [
          stylix.homeManagerModules.stylix
          ./home.nix
        ];
      };
    };

}
