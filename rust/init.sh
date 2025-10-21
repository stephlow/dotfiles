#!/bin/bash

echo "installing rust"

if command -v pacman &> /dev/null; then
    sudo pacman -S rustup
elif command -v brew &> /dev/null; then
    brew install rustup
else
    echo "unsupported package manager. please install rustup manually."
    exit 1
fi

echo "adding rust components"
rustup component add rustfmt clippy

echo "rust initialized"
