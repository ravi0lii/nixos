{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # Browser
    firefox google-chrome plasma-browser-integration
    tor-browser-bundle-bin

    # Desktop apps
    libreoffice-fresh

    # Communication
    discord
    element-desktop
    tdesktop

    # Mail client
    thunderbird birdtray

    # Tools
    youtube-dl
  ];
}