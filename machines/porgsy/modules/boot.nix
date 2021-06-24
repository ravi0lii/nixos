{ pkgs, ... }:

{
  boot = {
    loader = {
      grub = {
        enable = true;
        version = 2;
        device = "nodev";
        efiSupport = true;
        gfxmodeEfi = "1024x768";
        enableCryptodisk = true;
        useOSProber = true;
      };

      efi.canTouchEfiVariables = true;
    };

    initrd = {
      # TODO: Move /home to a separate partition/volume
      luks.devices = {
        cryptroot = {
          device = "/dev/disk/by-uuid/2fca666a-aa6a-43de-bb9a-e5d184f5e431";
          # The device contains a LVM
          preLVM = true;
          # TODO: This can be a security risk. Should it be disabled?
          allowDiscards = true;
        };
      };
    };
  };
}