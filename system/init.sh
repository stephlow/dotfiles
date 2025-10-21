#!/bin/bash

echo "updating system packages"

if command -v pacman &> /dev/null; then
    sudo pacman -Syu --noconfirm python ripgrep tree-sitter xclip lazygit bottom gdu
elif command -v brew &> /dev/null; then
    brew update && brew upgrade && brew install python ripgrep tree-sitter xclip lazygit bottom gdu
else
    echo "unsupported package manager. please update and install python, ripgrep, tree-sitter, xclip, lazygit, bottom, gdu manually."
    exit 1
fi

echo "system packages updated"