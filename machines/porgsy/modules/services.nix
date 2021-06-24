{ ... }:

{
  services = {
    xserver = {
      enable = true;

      displayManager = {
        sddm.enable = true;
        plasma5.enable = true;
      };

      # Keymap in X11
      layout = "de";
      xkbOptions = "nodeadkeys";

      # Intel graphics
      videoDrivers = [ "modesetting" ];
      useGlamor = true;

      # Enable touchpad support
      libinput.enable = true;
    };

    # Enable CUPS to print documents
    printing.enable = true;

    # Enable GNOME keyring
    gnome.gnome-keyring.enable = true;

    # TODO: Should this be moved into the bluetooth module?
    blueman.enable = true;
  };
}