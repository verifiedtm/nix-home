{ config, ... }:

let
  colors = config.lib.stylix.colors.withHashtag;
in
{
  programs.delta = {
    enable = true;
    enableGitIntegration = true;

    options = {
      navigate = true;
      dark = true;

      true-color = "always";

      # delta's built-in red/green diff styling
      minus-style = "normal auto";
      plus-style = "normal auto";

      # stylix accents
      file-style = "${c.base0D} bold";
      hunk-header-style = "syntax ${c.base02}";
      line-numbers-minus-style = c.base08;
      line-numbers-plus-style = c.base0B;
    };
  };
}
