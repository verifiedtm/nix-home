{ lib, pkgs, ... }:

{
  programs.fastfetch = {
    enable = true;

    settings = {
      logo = {
        type = "auto";
        padding.right = 2;
      };

      display = {
        separator = "  ";
      };

      modules = [
        "title"
        "separator"
        "os"
        "host"
        "kernel"
        "uptime"
        "packages"
        "shell"
        "terminal"
      ]
      ++ lib.optionals pkgs.stdenv.hostPlatform.isLinux [
        "de"
        "wm"
      ]
      ++ [
        "cpu"
        "gpu"
        "memory"
        "disk"
        "break"
        "colors"
      ];
    };
  };
}
