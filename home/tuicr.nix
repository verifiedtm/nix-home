{ ... }:

{
  programs.tuicr = {
    enable = true;
    settings = {
      diff_view = "side-by-side";
      appearance = "system";
      mouse = true;
      editor = "emacsclient";
      relative_line_numbers = true;
    };
  };
}
