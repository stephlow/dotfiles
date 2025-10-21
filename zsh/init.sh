#!/bin/bash

echo "setting up zsh"

echo "symlinking zsh files"
ln -sfn $(pwd)/zsh/config/.zshrc ~/.zshrc
ln -sfn $(pwd)/zsh/config/.zsh-theme-everforest-dark ~/.zsh-theme-everforest-dark

echo "setting up zsh themes"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

echo "zsh set up"
