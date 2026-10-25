{ lib, pkgs, ... }:

{
  programs.emacs = lib.mkIf pkgs.stdenv.hostPlatform.isLinux {
    enable = true;
    package = pkgs.emacs-pgtk.override {
      withNativeCompilation = true;
      withTreeSitter = true;
    };
  };
}
