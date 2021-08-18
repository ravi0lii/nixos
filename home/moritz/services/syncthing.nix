{ ... }:

{
  services.syncthing = {
    enable = true;
    tray = {
      # TODO: Enable tray; requires to fix error that tray is not running
      #       (tray.target does not exist)
      enable = false;
    };
  };
}