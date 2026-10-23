{ lib, pkgs, ... }:
{
  programs.vim = {
    enable = true;
    packageConfigurable = pkgs.vim;

    plugins = with pkgs.vimPlugins; [
      fzf-vim
    ];

    extraConfig = builtins.readFile ../dotfiles/vim/vimrc;
  };
}
