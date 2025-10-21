#!/bin/bash

echo "installing node"

if command -v pacman &> /dev/null; then
    sudo pacman -S --noconfirm pnpm
elif command -v brew &> /dev/null; then
    brew install --yes pnpm
else
    echo "unsupported package manager. please install pnpm manually."
    exit 1
fi

echo "node initialized"
