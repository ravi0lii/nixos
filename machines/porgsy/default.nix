{ ... }:

{
  imports = [
    # Hardware-specific configuration
    ./hardware-configuration.nix

    # User 'moritz'
    ../../users/moritz.nix

    # Modules
    ./modules/environment.nix
    ./modules/i18n.nix
    ./modules/networking.nix
    ./modules/firewall.nix
    ./modules/console.nix
    ./modules/programs.nix
    ./modules/packages.nix
    ./modules/time.nix
    ./modules/boot.nix
    ./modules/services.nix
    ./modules/security.nix
    ./modules/hardware.nix
    ./modules/nix.nix
    ../../modules/bluetooth.nix
    ../../modules/sound.nix
    ../../modules/pulseaudio.nix
    ../../modules/ntp.nix
  ];

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "20.09"; # Did you read the comment?
}