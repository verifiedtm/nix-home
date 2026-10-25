{ ... }:

{
  programs.lazygit = {
    enable = true;
    enableZshIntegration = true;
    enableBashIntegration = true;
    settings = {
      gui = {
        showRandomTip = false;
        nerdFontsVersion = "3";
      };
    };
  };
}
