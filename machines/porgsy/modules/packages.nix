{ pkgs, ... }:

{
  nixpkgs.config = {
    allowUnfree = true;
  };

  environment.systemPackages = with pkgs; [
    # Browser
    firefox google-chrome plasma-browser-integration
    tor-browser-bundle-bin

    # KDE apps
    filelight
    kate
    kcolorchooser
    kdeconnect
    okular

    # Desktop apps
    barrier
    bitwarden
    gimp
    gnome.seahorse
    gparted
    inkscape
    nextcloud-client
    spotify
    vscode

    # Communication
    discord
    element-desktop
    tdesktop

    # Mail client
    thunderbird birdtray

    # Tools
    dnsutils
    gitFull
    gnome.libsecret
    htop
    nix-index
    vim
    wget
    wireguard-tools

    libsForQt5.full

    # Custom scripts
    ((import ../../../scripts/clearHomeKdeCache.nix) pkgs)
  ];
}