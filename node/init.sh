#!/bin/bash

echo "installing node"

if command -v pacman &> /dev/null; then
    sudo pacman -S pnpm
elif command -v brew &> /dev/null; then
    brew install pnpm
else
    echo "unsupported package manager. please install pnpm manually."
    exit 1
fi

echo "node initialized"
