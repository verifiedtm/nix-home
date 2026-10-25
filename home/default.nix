{ ... }:

{
  imports = [
    ./atuin.nix
    ./bash.nix
    ./bat.nix
    ./btop.nix
    ./cava.nix
    ./delta.nix
    ./direnv.nix
    ./eza.nix
    ./fastfetch.nix
    ./fzf.nix
    ./git.nix
    ./lazygit.nix
    ./moor.nix
    ./neovim.nix
    ./ripgrep.nix
    ./starship.nix
    ./stylix.nix
    ./television.nix
    ./vim.nix
    ./whiptail.nix
    ./yazi.nix
    ./zoxide.nix
    ./zsh.nix
  ];

  programs.home-manager = {
    enable = true;
  };

  home = {
    shellAliases = {
      tree = "eza --tree --git-ignore";
      catp = "bat --style=plain";
    };
    sessionPath = [
      "$HOME/bin"
      "$HOME/.local/bin"
    ];
  };

}
