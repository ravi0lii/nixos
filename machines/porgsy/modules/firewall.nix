{ ... }:

{
  networking.firewall = {
    enable = true;
    allowPing = true;
    # 24800 -> barrier
    # 57621 -> Spotify local discovery
    allowedTCPPorts = [ 24800 57621 ];
    # KDE Connect uses needs 1714-1764 on both TCP and UDP.
    allowedTCPPortRanges = [
      { from = 1714; to = 1764; }
    ];
    allowedUDPPortRanges = [
      { from = 1714; to = 1764; }
    ];
  };
}