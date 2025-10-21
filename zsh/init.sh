#!/bin/bash

echo "setting up zsh"

echo "symlinking zsh files"
ln -sfn $(pwd)/zsh/.zshrc ~/.zshrc
ln -sfn $(pwd)/zsh/.zsh-theme-everforest-dark ~/.zsh-theme-everforest-dark

echo "setting up zsh themes"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
curl https://raw.githubusercontent.com/sainnhe/dotfiles/master/.zsh-theme-everforest-dark --output ~/.zsh-theme-everforest-dark

echo "zsh set up"
