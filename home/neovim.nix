{ pkgs, ... }:

{
  programs.neovim = {
    enable = true;

    plugins = with pkgs.vimPlugins; [
      fzf-vim
    ];

    extraConfig = builtins.readFile ../dotfiles/vim/vimrc;

    withRuby = false;
    withPython = false;

    initLua = ''
      local opt = vim.opt

      opt.modeline = false
      opt.formatoptions = "tcqrn1"

      opt.tabstop = 4
      opt.shiftwidth = 4
      opt.softtabstop = 4
      opt.expandtab = true
      opt.shiftround = false

      opt.scrolloff = 3

      opt.matchpairs:append("<:>")
      opt.showmatch = true
      opt.ignorecase = true
      opt.smartcase = true
    '';
  };
}
