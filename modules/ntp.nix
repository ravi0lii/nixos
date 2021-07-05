{ ... }:

{
  # ntpd hangs on shutdown, see https://github.com/NixOS/nixpkgs/issues/38627
  # Until this is fixed, use chrony instead of ntpd
  # services.ntp.enable = true;
  services.chrony.enable = true;
}