{ lib, pkgs, ... }:

let
  emacs = if pkgs.stdenv.hostPlatform.isLinux then pkgs.emacs-pgtk else pkgs.emacs;
in
{
  programs.emacs = {
    enable = true;
    package = emacs.override {
      withNativeCompilation = true;
      withTreeSitter = true;
    };
  };

  targets.darwin = lib.mkIf pkgs.stdenv.hostPlatform.isDarwin {
    copyApps.enable = true;
  };
}
