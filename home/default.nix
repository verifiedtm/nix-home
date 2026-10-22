{ ... }:

{
  imports = [
    ./git.nix
    ./delta.nix
    ./vim.nix
    ./neovim.nix
    ./kitty.nix
    ./direnv.nix
    ./zsh.nix
    ./fzf.nix
    ./starship.nix
  ];

  programs.home-manager.enable = true;
}
