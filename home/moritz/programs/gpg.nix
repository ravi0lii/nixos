{ ... }:

{
  programs.gpg = {
    enable = true;
    settings = {
      # TODO: Is this the right value here?
      default-key = "930C 4199 83B9 8F2A 8817 3208 C37E 96E2 D2B2 349E";
    };
  };
}