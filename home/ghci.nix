{ ... }:

{
  home.file.".ghci".text = ''
    :set +m -v0
    :set -XOverloadedStrings
    :set prompt "\ESC[1;34m%s\n\ESC[0;34mλ> \ESC[m"
  '';
}
