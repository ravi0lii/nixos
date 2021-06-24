{ ... }:

{
  security = {
    pam = {
      # Unlock user`s default GNOME keyring on login
      services.login.enableGnomeKeyring = true;
    };
  };
}