{ lib, pkgs, ... }:
let
  emacs =
    if pkgs.stdenv.hostPlatform.isDarwin then
      import ./darwin.nix { inherit pkgs; }
    else
      pkgs.emacs-pgtk;
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
