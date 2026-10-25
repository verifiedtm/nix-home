# nix-home

My portable-ish nix home configuration, intended to be imported for home-manager/nixOS/nix-darwin.

# Manual edits

preserve `NEWT_COLORS` through `sudo` so dialogs look less awful. We want them to inherit our nice terminal color scheme.

`visudo -f /etc/sudoers.d/newt-colors`

```
Defaults env_keep += "NEWT_COLORS"
```

This var is configured in `home/whiptail.nix`

