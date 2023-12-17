#!/bin/bash

xcode-select --install

# install homebrew if it does not exist
if command -v brew &> /dev/null; then
    echo "Homebrew is already installed."
else
    # Install Homebrew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
# if oh my zsh is not installed, install it
if [ -d "$HOME/.oh-my-zsh" ] 
then
    echo "oh-my-zsh is already installed."
else
    echo "Installing oh-my-zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# if powerlevel10k is not installed, install it
if [ -d "$HOME/.oh-my-zsh/custom/themes/powerlevel10k" ] 
then
    echo "powerlevel10k is already installed."
else
    echo "Installing powerlevel10k..."
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
fi


