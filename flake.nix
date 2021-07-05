{
  description = "NixOS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-21.05";
  };

  outputs = { self, nixpkgs, ... } @ args: {
    nixosConfigurations.porgsy = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./machines/porgsy/default.nix
      ];
    };
  };
}
