#!/bin/bash

echo "initializing dotfiles for macos"

echo "installing neovim, pnpm, rustup, and ghostty"
brew install neovim pnpm rustup
brew install --cask ghostty

echo "installing colima and docker"
brew install colima docker
colima start

echo "adding rust components"
rustup component add rustfmt clippy

echo "setting up astronvim config"
# cp -r $(pwd)/.config/ ~/
# ln -sfn $(pwd)/.config ~/.config

echo "setting up zsh themes"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
curl https://raw.githubusercontent.com/sainnhe/dotfiles/master/.zsh-theme-everforest-dark --output .zsh-theme-everforest-dark

echo "symlinking dotfiles"
# ln -sfn $(pwd)/.gitconfig $HOME/.gitconfig
# ln -sfn $(pwd)/.gitexcludes $HOME/.gitexcludes
# ln -sfn $(pwd)/.zshrc $HOME/.zshrc
# ln -sfn $(pwd)/.zsh-theme-everforest-dark $HOME/.zsh-theme-everforest-dark
# ln -sfn $(pwd)/.npmrc $HOME/.npmrc
# ln -sfn $(pwd)/.config/ghostty ~/.config/ghostty

echo "macos initialization complete"