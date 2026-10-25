{ lib, pkgs, ... }:

{
  # installed on debian
  home.sessionVariables = lib.mkIf pkgs.stdenv.hostPlatform.isLinux {
    NEWT_COLORS = ''
      root=,black
      roottext=cyan,black
      window=lightgray,black
      border=blue,black
      title=cyan,black
      textbox=lightgray,black
      button=black,blue
      actbutton=black,cyan
      checkbox=lightgray,black
      actcheckbox=black,cyan
      listbox=lightgray,black
      actlistbox=lightgray,black
      sellistbox=black,cyan
      actsellistbox=black,cyan
    '';
  };
}
