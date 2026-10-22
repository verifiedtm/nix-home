{ pkgs, ... }:

{
  programs.neovim = {
    enable = true;

    plugins = with pkgs.vimPlugins; [
      fzf-vim
    ];

    extraConfig = builtins.readFile ../dotfiles/vim/vimrc;
  };
}
