{
  description = "NixOS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-21.05";
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager/release-21.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... } @ inputs: 
    let

      nixpkgsOverlays = [
        (final: prev: {
          unstable = import inputs.nixpkgs-unstable { system = final.system; };
        })
      ];

    in

      {
        nixosConfigurations.porgsy = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          modules = [
            # TODO: Understand how this works and enable allowUnfree
            ({ ... }: {
              nixpkgs.overlays = nixpkgsOverlays;
            })
            ./machines/porgsy/default.nix
            home-manager.nixosModules.home-manager
            {
              home-manager = {
                # For information about these options, see https://rycee.gitlab.io/home-manager/
                useGlobalPkgs = true;
                useUserPackages = true;

                users.moritz = import ./home/moritz/default.nix;
              };
            }
          ];
        };
      };
}
