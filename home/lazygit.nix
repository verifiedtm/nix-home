{ ... }:

{
  programs.lazygit = {
    enable = true;
    enableZshIntegration = true;
    settings = {
      gui = {
        showRandomTip = false;
        nerdFontsVersion = "3";
      };
    };
  };
}
