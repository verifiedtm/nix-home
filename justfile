[default]
[private]
list:
    just --list

[group('format')]
nixfmt:
    fd -e nix -t f -x nixfmt

[group('format')]
just-fmt:
    just --format

[group('format')]
format: nixfmt just-fmt

[group('nix')]
check:
    nix flake check
