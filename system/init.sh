#!/bin/bash

echo "updating system packages"

if command -v pacman &> /dev/null; then
    sudo pacman -Syu
elif command -v brew &> /dev/null; then
    brew update && brew upgrade
else
    echo "unsupported package manager. please update manually."
    exit 1
fi

echo "system packages updated"