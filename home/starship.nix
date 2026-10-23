{ lib, config, ... }:

let
  colors = {
    identity = "#a3aed2";
    git = "#394260";
    surface = "#1a1b26";
    blue = "#7aa2f7";
    cyan = "#7dcfff";
    purple = "#bb9af7";
    amber = "#e0af68";
    green = "#9ece6a";
    red = "#f7768e";
  };
in
{
  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    presets = [ "tokyo-night" ];

    settings = {
      add_newline = false;

      format = lib.concatStrings [
        "[░▒▓](fg:${colors.identity})"
        "$os"
        "$username"
        "$hostname"
        "[](fg:${colors.identity} bg:${colors.git})"
        "$git_branch"
        "$git_status"
        "[](fg:${colors.git})"
        "$direnv"
        "$time"
        "\n"
        "$directory"
        "$character"
      ];

      os = {
        disabled = false;
        style = "bold fg:${colors.surface} bg:${colors.identity}";
        format = "[ $symbol ]($style)";
      };

      username = {
        show_always = true;
        style_user = "bold fg:${colors.surface} bg:${colors.identity}";
        format = "[$user@]($style)";
      };

      hostname = {
        ssh_only = false;
        ssh_symbol = "ssh://";
        format = lib.concatStrings [
          "([$ssh_symbol](bold fg:${colors.amber} bg:${colors.identity}))"
          "[$hostname ](bold fg:${colors.surface} bg:${colors.identity})"
        ];
      };

      git_branch = {
        style = "fg:${colors.purple} bg:${colors.git}";
        format = "[  $branch ]($style)";
      };

      git_status = {
        style = "bold fg:${colors.amber} bg:${colors.git}";
        format = "([$all_status$ahead_behind ]($style))";
      };

      direnv = {
        disabled = false;
        symbol = "";
        format = "[ $symbol$loaded ](fg:${colors.cyan} bg:#212736)[ ](fg:#212736)";
        loaded_msg = "online";
        unloaded_msg = "offline";
      };

      time = {
        disabled = false;
        time_format = "%H:%M";
        style = "fg:${colors.purple} bg:#1f2335";
        format = "[ ](fg:#212736 bg:#1f2335)[   $time ]($style)[ ](fg:#1f2335)";
      };

      directory = {
        truncation_length = 0;
        truncate_to_repo = false;
        home_symbol = "~";
        substitutions = {
          "^~/" = "${config.home.homeDirectory}/";
        };
        format = "[$path](bold fg:${colors.blue}) ";
      };

      character = {
        success_symbol = "[❯](bold fg:${colors.green})";
        error_symbol = "[❯](bold fg:${colors.red})";
      };
    };
  };
}
