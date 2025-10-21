#!/bin/bash

echo "setting up git config"
ln -sfn $(pwd)/git/config/.gitconfig ~/.gitconfig
ln -sfn $(pwd)/git/config/.gitexcludes ~/.gitexcludes

echo "installing lazygit"

if command -v pacman &> /dev/null; then
    sudo pacman -S --noconfirm lazygit
elif command -v brew &> /dev/null; then
    brew install lazygit
else
    echo "unsupported package manager. please install lazygit manually."
fi

echo "git config set up"