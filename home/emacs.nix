{ lib, pkgs, ... }:

{
  programs.emacs = {
    enable = true;
    package = pkgs.emacs.override {
      withNativeCompilation = true;
      withTreeSitter = true;
    };
  };

  targets.darwin = lib.mkIf pkgs.stdenv.hostPlatform.isDarwin {
    copyApps.enable = true;
  };
}
