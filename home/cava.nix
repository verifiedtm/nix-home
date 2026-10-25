{ pkgs, ... }:

{
  programs.cava = {
    enable = true;
    package = pkgs.cava.override {
      withPipewire = false;
    };

    settings = {
      general = {
        bars = 0; # automatic
        framerate = 60;
      };
      input = {
        method = "pulse";
      };
      output = {
        method = "ncurses";
      };
    };
  };
}
