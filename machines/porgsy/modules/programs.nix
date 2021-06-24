{ ... }:

{
  programs = {
    zsh = {
      enable = true;
      ohMyZsh = {
        enable = true;
        plugins = [ "git" "sudo" "docker" "ansible" ];
        theme = "gentoo";
      };
    };
  };
}