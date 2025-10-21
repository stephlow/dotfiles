#!/bin/bash

echo "initializing nvim"

if command -v pacman &> /dev/null; then
    sudo pacman -S --noconfirm neovim
elif command -v brew &> /dev/null; then
    brew install --yes neovim
else
    echo "unsupported package manager. please install neovim manually."
    exit 1
fi

echo "symlinking nvim config"
ln -sfn $(pwd)/nvim/config ~/.config/nvim

echo "nvim initialized"
