{ pkgs, ... }:

{
  # This is needed since home-manager does not provide this in their module for
  # the nextcloud client.
  home.packages = [ pkgs.nextcloud-client ];

  services.nextcloud-client = {
    enable = true;
    startInBackground = true;
  };
}