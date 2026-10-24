{ pkgs, ... }:

{
  stylix = {
    enable = true;
    autoEnable = false;

    base16Scheme = "${pkgs.base16-schemes}/share/themes/tokyo-night-dark.yaml";

    polarity = "dark";
    targets = {
      # incompatible with test
      kde.enable = false;
    };
  };
}
