{ lib, ... }:

{
  programs.ssh = {
    enable = true;
    # TODO: Finish
    matchBlocks = {
      "gustav" = lib.hm.dag.entryBefore [ "*" ] {
        hostname = "gustav.ip.moritz.pw";
      };

      "flex" = lib.hm.dag.entryBefore [ "*" ] {
        hostname = "flex.ip.moritz.pw";
      };

      "ethan" = lib.hm.dag.entryBefore [ "*" ] {
        hostname = "10.65.0.1";
      };

      "astolfo" = lib.hm.dag.entryBefore [ "*" ] {
        hostname = "astolfo.ip.fef.moe";
      };

      "asuna" = lib.hm.dag.entryBefore [ "*" ] {
        hostname = "asuna.ip.fef.moe";
      };

      "aur.archlinux.org" = lib.hm.dag.entryBefore [ "*" ] {
        user = "aur";
      };

      "*" = {
        port = 22;
        user = "root";
        identityFile = [ "~/.ssh/id_ecdsa" ];
      };
    };
  };
}