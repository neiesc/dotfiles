{
  description = "NixOS + Niri + Helium";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";

    helium = {
      url = "github:oxcl/nix-flake-helium-browser";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    noctalia = {
      url = "github:noctalia-dev/noctalia";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, helium, noctalia, home-manager, ... }:
    {
      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";

        modules = [
          ./configuration.nix

          helium.nixosModules.default
          noctalia.nixosModules.default
          home-manager.nixosModules.home-manager

          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.neiesc = import ./home/neiesc.nix;

            nixpkgs.overlays = [
              helium.overlays.default
            ];

            programs.helium = {
              enable = true;

              flags = [
                "--ozone-platform-hint=auto"
              ];
            };
          }
        ];
      };
    };
}
