{ ... }:

{
  # TODO: Should this be moved into an own module?
  nix = {
    gc = {
      automatic = true;
      dates = "weekly";
    };
  };
}