#!/bin/bash

echo "setting up zsh"

if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "installing oh-my-zsh"
    if command -v yay &> /dev/null; then
        yay -S oh-my-zsh-git --noconfirm
    else
        RUNZSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    fi
fi

echo "symlinking zsh files"
ln -sfn $(pwd)/zsh/config/.zshrc ~/.zshrc
ln -sfn $(pwd)/zsh/config/.zsh-theme-everforest-dark ~/.zsh-theme-everforest-dark

echo "setting up zsh themes"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

echo "zsh set up"
