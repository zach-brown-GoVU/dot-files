{
  description = "nix-darwin system flake with home-manager";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:nix-darwin/nix-darwin/master";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs@{ self, nix-darwin, nixpkgs, home-manager }:
  {
    # Personal MacBook
    # $ darwin-rebuild switch --flake .#Zachs-MacBook-Pro
    darwinConfigurations."Zachs-MacBook-Pro" = nix-darwin.lib.darwinSystem {
      modules = [
        ./modules/shared.nix
        ./modules/personal.nix
        home-manager.darwinModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.zachbrown = import ./home.nix;
        }
        {
          system.configurationRevision = self.rev or self.dirtyRev or null;
          system.stateVersion = 6;
          system.primaryUser = "zachbrown";
          nixpkgs.hostPlatform = "aarch64-darwin";
          users.users.zachbrown = {
            name = "zachbrown";
            home = "/Users/zachbrown";
            shell = nixpkgs.legacyPackages.aarch64-darwin.fish;
          };
        }
      ];
    };

    # Work MacBook (VU)
    # $ darwin-rebuild switch --flake .#VU-D4RW65L6QG
    darwinConfigurations."VU-D4RW65L6QG" = nix-darwin.lib.darwinSystem {
      modules = [
        ./modules/shared.nix
        ./modules/vu.nix
        home-manager.darwinModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users."zacharyc.brown" = import ./home.nix;
        }
        {
          system.configurationRevision = self.rev or self.dirtyRev or null;
          system.stateVersion = 6;
          system.primaryUser = "zacharyc.brown";
          nixpkgs.hostPlatform = "aarch64-darwin";
          users.users."zacharyc.brown" = {
            name = "zacharyc.brown";
            home = "/Users/zacharyc.brown";
            shell = nixpkgs.legacyPackages.aarch64-darwin.fish;
          };
        }
      ];
    };
  };
}
