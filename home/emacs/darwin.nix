{ pkgs }:

let
  emacsPlusRevision = "c1023a5a99cfa78c2bd0f4ff9e52fc16dc171f1e";

  patch =
    name: hash:
    pkgs.fetchurl {
      url = "https://raw.githubusercontent.com/d12frosted/homebrew-emacs-plus/${emacsPlusRevision}/patches/emacs-31/${name}.patch";
      sha256 = hash;
    };

  patches = [
    (patch "fix-ns-x-colors" "9e5d3e26a8d388d3a000b697d582769645ca93ad597b4113744deba4b89a8b9e")

    (patch "system-appearance" "53283503db5ed2887e9d733baaaf80f2c810e668e782e988bda5855a0b1ebeb4")

    (patch "round-undecorated-frame" "c9430a1ead81e313b3d2877ff6f8044fb29441eecc7cc42000515d7c8ec6380f")

    (patch "fix-ns-scroll-crash" "3250bf6e45cdcb3f4cbc0ace2d2d3200464331cbfb34613980554e31ec45fe6c")
  ];

in

assert
  pkgs.lib.versionAtLeast pkgs.emacs.version "31" && pkgs.lib.versionOlder pkgs.emacs.version "32";

pkgs.emacs.overrideAttrs (old: {
  patches = (old.patches or [ ]) ++ patches;
})
