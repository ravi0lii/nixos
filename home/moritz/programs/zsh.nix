{ pkgs, ... }:

let

  ytdlCmd = cmd: "${pkgs.youtube-dl}/bin/youtube-dl ${cmd}";

in

{
  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    enableCompletion = true;
    autocd = true;
    defaultKeymap = "viins";
    dirHashes = {
      docs = "$HOME/Documents";
      dl = "$HOME/Downloads";
      proj = "$HOME/Projects";
    };
    history = {
      ignoreDups = true;
      ignoreSpace = true;
      share = true;
    };
    initExtra = ''
      # Load Gnome keyring
      eval $(gnome-keyring-daemon --start --daemonize)
      export SSH_AUTH_SOCK
    '';

    shellAliases = {
      # youtube-dl
      # Taken from https://github.com/D3SOX/dotfiles/blob/b73535937015be71f60306940354f0633cd77e69/zsh/.aliases.zsh#L3-L4
      ytdl = ytdlCmd "-i -f 'bestvideo[ext!=webm]+bestaudio[ext!=webm]/best[ext!=webm]'";
      yt2mp3 = ytdlCmd "-i --extract-audio --audio-format mp3 --embed-thumbnail --add-metadata -o '%(title)s.%(ext)s'";
    };

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "sudo" "docker" "ansible" ];
      theme = "gentoo";
    };
  };
}