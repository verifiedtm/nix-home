{ ... }:

{
  programs.git = {
    enable = true;

    settings = {
      help.autocorrect = 1;
      color.ui = "auto";
      push.default = "simple";
      pull.rebase = false;

      core = {
        editor = "vim";
        autocrlf = false;
      };

      alias.tree = "log --oneline --decorate --all --graph";

      pager.branch = false;
      init.defaultBranch = "master";

      filter.lfs = {
        process = "git-lfs filter-process";
        required = true;
        clean = "git-lfs clean -- %f";
        smudge = "git-lfs smudge -- %f";
      };
    };
  };
}
