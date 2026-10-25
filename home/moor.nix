{ ... }:

{
  # todo, try ov
  programs.moor = {
    enable = true;

    options = {
      quit-if-one-screen = true;
      no-linenumbers = false;
    };
  };

  home.sessionVariables.PAGER = "moor";
}
