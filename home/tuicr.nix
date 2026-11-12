{ config, ... }:

let
  colors = config.lib.stylix.colors.withHashtag;
in
{
  programs.tuicr = {
    enable = true;
    settings = {
      diff_view = "side-by-side";
      appearance = "system";
      mouse = true;
      editor = "emacsclient";
      relative_line_numbers = true;
      theme = "stylix";
      themes = {
        stylix = {
          panel_bg = colors.base00;
          fg_primary = colors.base05;
          fg_secondary = colors.base04;
          border_focused = colors.base0D;
          diff_add = colors.base0B;
          diff_del = colors.base08;
          diff_add_bg = colors.base01;
          diff_del_bg = colors.base01;
        };
      };
    };
  };
}
