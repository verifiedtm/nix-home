{ ... }:

{
  programs.git = {
    enable = true;

    includes = [
      { path = "~/.gitconfig.local"; }
    ];

    settings = {
      help.autocorrect = 1;
      color.ui = "auto";
      push.default = "simple";
      pull.rebase = false;

      core = {
        editor = "vim";
        autocrlf = false;
        excludesfile = "~/.gitignore_global";
      };

      alias = {
        tree = "log --oneline --decorate --all --graph";
        prune-branches = ''!git branch --format='%(if)%(worktreepath)%(then)%(else)%(refname:short)%(end)' | while IFS= read -r branch; do [ -z "$branch" ] || git branch -d -- "$branch"; done'';
        git = ''!f() { printf "%s\n" "You git it. You git it twice. Now commit to something."; }; f'';
        cool-log = "log --graph --oneline --decorate --left-right --boundary origin/master...HEAD";
      };

      pager.branch = false;
      init.defaultBranch = "master";
      merge.conflictStyle = "zdiff3";

      filter.lfs = {
        process = "git-lfs filter-process";
        required = true;
        clean = "git-lfs clean -- %f";
        smudge = "git-lfs smudge -- %f";
      };
    };
  };
}
