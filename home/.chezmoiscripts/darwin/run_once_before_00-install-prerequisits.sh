#!/bin/bash

xcode-select --install

# install homebrew if it does not exist
if command -v brew &> /dev/null; then
    echo "Homebrew is already installed."
else
    # Install Homebrew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# install EurKey Keyboard layout
echo "Downloading EurKEY keyboard layout. (Requires restart by user)"
wget https://github.com/jonasdiemer/EurKEY-Mac/raw/master/EurKEY.icns
wget https://github.com/jonasdiemer/EurKEY-Mac/raw/master/EurKEY.keylayout
sudo mv EurKEY.icns EurKEY.keylayout "/Library/Keyboard Layouts/"



