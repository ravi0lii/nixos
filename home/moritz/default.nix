{ ... }:

{
  imports = [
    ./packages.nix
    
    ./programs/git.nix
    ./programs/ssh.nix
    ./programs/gpg.nix
    ./programs/zsh.nix
    ./programs/exa.nix

    ./services/kdeconnect.nix
    ./services/syncthing.nix
    ./services/nextcloud-client.nix
  ];
}