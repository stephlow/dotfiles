#!/bin/bash

echo "installing ghostty"

if command -v pacman &> /dev/null; then
    sudo pacman -S ghostty
elif command -v brew &> /dev/null; then
    brew install ghostty
else
    echo "unsupported package manager"
    exit 1
fi

echo "symlinking ghostty config"
ln -sfn $(pwd)/config/ghostty ~/.config/ghostty

echo "ghostty initialized"
