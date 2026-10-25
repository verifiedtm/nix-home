{ ... }:

{
  # todo, try ov
  programs.moore = {
    enable = true;

    options = {
      quit-if-one-screen = true;
      no-linenumbers = false;
    };
  };

  home.sessionVariables.PAGER = "moor";
}
