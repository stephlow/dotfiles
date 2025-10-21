#!/bin/bash

echo "installing node"

if command -v pacman &> /dev/null; then
    sudo pacman -S --noconfirm nodejs pnpm
elif command -v brew &> /dev/null; then
    brew install --yes node pnpm
else
    echo "unsupported package manager. please install node and pnpm manually."
    exit 1
fi

echo "node initialized"
