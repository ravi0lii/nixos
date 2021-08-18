{ pkgs, ... }:

{
  nixpkgs.config = {
    allowUnfree = true;
  };

  environment.systemPackages = with pkgs; [
    # KDE apps
    filelight
    kate
    kcolorchooser
    okular

    # Desktop apps
    barrier
    bitwarden
    gimp
    gnome.seahorse
    gparted
    hexchat
    inkscape
    spotify
    vscode

    # Libraries
    llvm
    openssl

    # Tools
    dnsutils
    file
    gitFull
    gnome.libsecret
    gnupg
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