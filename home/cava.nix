{ ... }:

{
  programs.cava = {
    enable = true;
    settings = {
      general = {
        bars = 0; # automatic
        framerate = 60;
      };
      output = {
        method = "ncurses";
      };
    };
  };
}
