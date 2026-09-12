{
  description = "NixOS + Niri + Helium";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";

    helium.url = "github:oxcl/nix-flake-helium-browser";
    helium.inputs.nixpkgs.follows = "nixpkgs";

    noctalia.url = "github:noctalia-dev/noctalia";
    noctalia.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, helium, noctalia, ... }:
    {
      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";

        modules = [
          ./configuration.nix

          helium.nixosModules.default
	  noctalia.nixosModules.default

          {
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
