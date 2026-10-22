{ lib, pkgs, ... }:

# no idea why this won't build on macOS
lib.mkIf pkgs.stdenv.hostPlatform.isLinux {
  programs.vim = {
    enable = true;

    plugins = with pkgs.vimPlugins; [
      fzf-vim
    ];

    extraConfig = builtins.readFile ../dotfiles/vim/vimrc;
  };
}
