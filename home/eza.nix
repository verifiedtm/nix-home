{ ... }:

{
  programs.eza = {
    enable = true;
    enableZshIntegration = true;
    enableBashIntegration = true;

    # this should disable on a tty, but for some reason does not
    icons = "auto";
    git = true;

    extraOptions = [
      "--group-directories-first"
    ];
  };
}
