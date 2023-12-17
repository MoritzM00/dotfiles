# My Dotfiles, managed with Chezmoi

Bootstrap new Mac by executing

```bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply MoritM00
```

## Installation

1. Install homebrew

   ```bash
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```

2. Install chezmoi and dashlane cli

   ```bash
   brew update
   brew install chezmoi dashlane/tap/dashlane-cli
   ```

3. Authenticate dashlane cli

   ```bash
   dcli sync
   ```

4. Run `chezmoi init MoritM00`

## Manual Installations

1. Activate EurKEY Layout:
   After the restart go to `System Settings` > `Keyboard` > `Edit` > `+` and search for `EurKEY v1.2`. After adding the layout select its symbol from the menu bar icon.
