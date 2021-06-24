{ pkgs, ... }:

{
  users.users.moritz = {
    name = "moritz";
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" ];
    shell = pkgs.zsh;
    uid = 1000;
    home = "/home/moritz";
  };
  
  users.groups.nixadmin.members = [ "moritz" ];
}