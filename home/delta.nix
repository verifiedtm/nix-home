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

      minus-style = "syntax ${colors.base01}";
      minus-emph-style = "syntax bold ${colors.base02}";
      plus-style = "syntax ${colors.base01}";
      plus-emph-style = "syntax bold ${colors.base02}";

      file-style = "${colors.base0D} bold";
      hunk-header-style = "syntax ${colors.base02}";

      line-numbers-minus-style = colors.base08;
      line-numbers-plus-style = colors.base0B;

    };
  };
}
