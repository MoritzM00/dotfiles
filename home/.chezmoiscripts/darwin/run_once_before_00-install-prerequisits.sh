#!/bin/bash


# install homebrew if it does not exist
if command -v brew &> /dev/null; then
    echo "Homebrew is already installed."
else
    # Install Homebrew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo; echo 'eval' $(/opt/homebrew/bin/brew shellenv) >> /Users/$(whoami)/.zprofile
    eval $(/opt/homebrew/bin/brew shellenv)
fi

if command -v dcli &> /dev/null; then
    echo "Dashlane CLI is already installed."
else
    # Install Dashlane CLI
    echo "Install and setup of Dashlane CLI"
    brew tap dashlane/tap
    brew install dashlane-cli
    dcli sync
fi

# install EurKey Keyboard layout
# check if layout exists
if [ -f "/Library/Keyboard Layouts/EurKEY.keylayout" ]; then
    echo "EurKEY keyboard layout is already installed."
else
    echo "Downloading EurKEY keyboard layout. (Requires restart by user)"
    brew install wget
    wget https://github.com/jonasdiemer/EurKEY-Mac/raw/master/EurKEY.icns
    wget https://github.com/jonasdiemer/EurKEY-Mac/raw/master/EurKEY.keylayout
    sudo mv EurKEY.icns EurKEY.keylayout "/Library/Keyboard Layouts/"
fi

# install NVM
echo "Installing NVM"
PROFILE=/dev/null bash -c 'curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash'

