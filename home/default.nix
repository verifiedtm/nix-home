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
    ./eza.nix
    ./bat.nix
    ./zoxide.nix
    ./atuin.nix
    ./television.nix
    ./fastfetch.nix
    ./cava.nix
    ./btop.nix
    ./yazi.nix
    ./lazygit.nix
  ];

  programs.home-manager.enable = true;
}
