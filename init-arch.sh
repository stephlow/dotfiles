#!/bin/bash

echo "initializing dotfiles for arch linux"

echo "installing neovim, rustup, pnpm, and ghostty"
sudo pacman -S neovim rustup pnpm ghostty

echo "installing docker"
sudo pacman -S docker
sudo systemctl enable docker && sudo systemctl start docker

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
# ln -sfn $(pwd)/.config/ghostty ~/.config/ghostty

echo "arch initialization complete"
