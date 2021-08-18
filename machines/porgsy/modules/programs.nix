{ pkgs, ... }:

{
  programs = {
    gnupg = {
      agent = {
        enable = true;
        # GNOME keyring works with this pinentry flavor, useful for gpg
        pinentryFlavor = "gnome3";
      };
    };

    ssh = {
      # Use ssh-askpass of seahorse so I don't have to type the passwords
      # of my ssh keys all the time
      askPassword = "${pkgs.gnome.seahorse}/libexec/ssh-askpass";
    };

    # Configuration for zsh is done using home-manager
    zsh.enable = true;
  };
}