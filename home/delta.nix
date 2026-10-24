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
    };
  };
}
