#!/bin/bash

xcode-select --install

# install homebrew if it does not exist
if command -v brew &> /dev/null; then
    echo "Homebrew is already installed."
else
    # Install Homebrew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi



