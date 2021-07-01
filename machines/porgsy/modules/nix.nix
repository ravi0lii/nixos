{ pkgs, ... }:

{
  # TODO: Should this be moved into an own module?
  nix = {
    # nixUnstable is required for nix flakes
    package = pkgs.nixUnstable;

    # Enable nix flakes
    extraOptions = ''
      experimental-features = nix-command flakes
    '';

    gc = {
      automatic = true;
      dates = "weekly";
    };
  };
}