{ ... }:

{
  imports = [
    ./atuin.nix
    ./bash.nix
    ./bat.nix
    ./btop.nix
    ./cava.nix
    ./delta.nix
    ./dircolors.nix
    ./direnv.nix
    ./emacs
    ./eza.nix
    ./fastfetch.nix
    ./fzf.nix
    ./ghci.nix
    ./git.nix
    ./lazygit.nix
    ./moor.nix
    ./neovim.nix
    ./readline.nix
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
    sessionVariables = {
      DOTNET_CLI_TELEMETRY_OPTOUT = "1";
      VCPKG_DISABLE_MATRICS = "1";
    };
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
