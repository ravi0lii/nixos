{ pkgs, ... }:

{
  programs.exa = {
    enable = true;
    # TODO: Add more customized exa aliases, from lynn:
    #       alias ls="exa -lhg --color=always --group-directories-first --icons"
    enableAliases = true;
  };
}