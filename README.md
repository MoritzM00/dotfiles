# My Dotfiles, managed with Chezmoi

Bootstrap a brand new Mac by executing

```bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply MoritzM00
```

This may or may not run successfully on the first try because of the dashlane cli dependency to inject private keys. If it doesn't, try again or setup dc-cli manually.

## Manual Installations

1. Activate EurKEY Layout:
   After the restart go to `System Settings` > `Keyboard` > `Edit` > `+` and search for `EurKEY v1.2`. After adding the layout select its symbol from the menu bar icon.
