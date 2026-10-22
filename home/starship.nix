{ lib, config, ... }:

{
  programs.starship = {
    enable = true;

    enableZshIntegration = true;

    presets = [ "tokyo-night" ];

    settings = {
      add_newline = false;

      format = lib.concatStrings [
        "[░▒▓](#a3aed2)"
        "$os"
        "$username"
        "$hostname"
        "[](fg:#a3aed2 bg:#394260)"
        "$git_branch"
        "$git_status"
        "[](fg:#394260)"
        "$direnv"
        "$time"
        "\n"
        "$directory"
        "$character"
      ];

      os = {
        disabled = false;
        style = "bg:#a3aed2 fg:#1a1b26";
        format = "[$symbol ]($style)";
      };

      direnv = {
        disabled = false;
        symbol = " ";
        format = "[ $symbol$loaded ](fg:#7dcfff bg:#212736)[](fg:#212736)";
        loaded_msg = "online";
        unloaded_msg = "offline";
      };

      directory = {
        truncation_length = 0;
        truncate_to_repo = false;
        # home_symbol = config.home.homeDirectory;
        # format = "[$path](bold fg:#7aa2f7) ";
        home_symbol = "~";
        substitutions = {
          "^~/" = "${config.home.homeDirectory}/";
        };
        format = "[$path](bold fg:#7aa2f7) ";

      };

      time = {
        disabled = false;
        time_format = "%H:%M";
        style = "fg:#bb9af7 bg:#1f2335";
        format = "[](fg:#212736 bg:#1f2335)[  $time ]($style)[](fg:#1f2335)";
      };

      character = {
        success_symbol = "[❯](bold green)";
        error_symbol = "[❯](bold red)";
      };
    };
  };
}
