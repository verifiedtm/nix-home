{ ... }:

{
  programs.bash = {
    enable = true;
    enableCompletion = true;

    historyControl = [ "ignoreboth" ];
    historySize = 10000;
    historyFileSize = 20000;

    shellOptions = [
      "histappend"
      "checkwinsize"
      "autocd"
    ];

    initExtra = ''
      bind 'set completion-ignore-case on'
    '';
  };
}
