{ pkgs, ... }:

{
  programs.zsh = {
    enable = true;

    enableCompletion = true;

    history = {
      size = 1000;
      save = 1000;
      share = true;
      ignoreAllDups = true;
    };

    shellAliases = {
      ls = if pkgs.stdenv.hostPlatform.isDarwin then "ls -G" else "ls --color=auto";
    };

    initContent = ''
      bindkey -e
      setopt autocd

      zstyle ':completion:*' auto-description 'specify: %d'
      zstyle ':completion:*' completer _expand _complete _correct _approximate
      zstyle ':completion:*' format 'Completing %d'
      zstyle ':completion:*' group-name ""
      zstyle ':completion:*' menu select=2

      if (( $+commands[dircolors] )); then
        eval "$(dircolors -b)"
      fi
      zstyle ':completion:*:default' list-colors ''${(s.:.)LS_COLORS}
      zstyle ':completion:*' list-prompt '%SAt %p: Hit TAB for more, or the character to insert%s'
      zstyle ':completion:*' matcher-list "" 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
      zstyle ':completion:*' menu select=long
      zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'
      zstyle ':completion:*' use-compctl false
      zstyle ':completion:*' verbose true

      zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
      zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'
    '';

  };
}
