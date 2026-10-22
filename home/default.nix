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
    ./ripgrep.nix
  ];

  programs.home-manager.enable = true;
}
