{ pkgs, ... }:

{
  hardware = {
    opengl = {
      # Enable accelerated OpenGL rendering through the Direct Rendering Interface
      driSupport = true;
      driSupport32Bit = true;

      extraPackages = [
        # Intel graphics
        pkgs.intel-compute-runtime
      ];
    };
  };
}