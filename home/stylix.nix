{ pkgs, ... }:

{
  stylix = {
    enable = true;
    autoEnable = true;

    base16Scheme = "${pkgs.base16-scemes}/share/themes/tokyo-night-dark.yaml";

    polarity = "dark";
  };
}
