{ pkgs, ... }:

{
  programs.git = {
    enable = true;
    package = pkgs.gitFull;
    userName = "ravi0li";
    userEmail = "moritz@howtoflex.club";
    signing = {
      key = "C37E96E2D2B2349E";
    };
    aliases = {
      hist = "log --oneline --graph --decorate --all";
    };
    extraConfig = {
      init = {
        defaultBranch = "main";
      };
    };
  };
}