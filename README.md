# My Dotfiles, managed with Chezmoi

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
