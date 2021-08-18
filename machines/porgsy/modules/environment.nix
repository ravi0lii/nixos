{ ... }:

{
  environment.pathsToLink = [
    # Get completion for system packages (e.g. systemd) when using zsh completion
    # See https://rycee.gitlab.io/home-manager/options.html#opt-programs.zsh.enableCompletion
    "/share/zsh"
  ];
}