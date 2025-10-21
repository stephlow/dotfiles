#!/bin/bash

echo "initializing nvim"

if command -v pacman &> /dev/null; then
    sudo pacman -S --noconfirm neovim python ripgrep tree-sitter xclip bottom gdu
elif command -v brew &> /dev/null; then
    brew install --yes neovim python ripgrep tree-sitter xclip bottom gdu
else
    echo "unsupported package manager. please install neovim, python, ripgrep, tree-sitter, xclip, bottom, gdu manually."
    exit 1
fi

echo "symlinking nvim config"
ln -sfn $(pwd)/nvim/config ~/.config/nvim

echo "nvim initialized"
