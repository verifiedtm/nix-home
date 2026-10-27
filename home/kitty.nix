{
  lib,
  config,
  pkgs,
  ...
}:

{
  programs.kitty = lib.mkIf pkgs.stdenv.hostPlatform.isLinux {
    enable = true;
    package = config.lib.nixGL.wrap pkgs.kitty;

    keybindings = {
      "kitty_mod+t" = "new_tab_with_cwd";
    };

    font = {
      name = "JetBrainsMono Nerd Font";
      size = 12;
    };

    themeFile = "tokyo_night_night";

    settings = {
      # window appearance
      window_padding_width = 8;
      hide_window_decorations = "no";
      confirm_os_window_close = 0;

      # tabs
      tab_bar_style = "powerline";
      tab_powerline_style = "slanted";
      tab_bar_min_tabs = 2;

      # behavior
      scrollback_lines = 10000;
      enable_audio_bell = false;
      update_check_interval = 0;
      shell = "/usr/bin/zsh";
    };
  };
}
