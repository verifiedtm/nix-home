{ pkgs, ... }:

{
  stylix = {
    enable = true;
    autoEnable = false;

    base16Scheme = "${pkgs.base16-schemes}/share/themes/tokyo-night-dark.yaml";

    polarity = "dark";

    targets = {
      # overwrites stuff
      kde.enable = false;
      bat.enable = true;
      btop.enable = true;
      cava.enable = true;
      delta.enable = true;
      fzf.enable = true;
      lazygit.enable = true;
      vim.enable = true;
      neovim.enable = true;
      yazi.enable = true;
    };
  };
}
