# Fix for the KDE task switcher (and similar KDE stuff) not working after
# an update.
pkgs: pkgs.writeScriptBin "clearHomeKdeCache" ''
    #!${pkgs.stdenv.shell}
    find ~/ -name qmlcache -exec rm -rf {} +
  ''