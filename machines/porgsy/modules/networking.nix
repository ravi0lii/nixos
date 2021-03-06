{ ... }:

{
  networking = {
    hostName = "porgsy";

    # The global useDHCP flag is deprecated, therefore explicitly set to false here.
    # Per-interface useDHCP will be mandatory in the future, so this generated config
    # replicates the default behaviour.
    useDHCP = false;
    interfaces = {
      wlp1s0.useDHCP = true;
    };

    # Use NetworkManager
    networkmanager.enable = true;
  };
}