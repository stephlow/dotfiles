#!/bin/bash

echo "installing anyrun"

if command -v pacman &> /dev/null; then
    sudo pacman -S --noconfirm anyrun
elif command -v brew &> /dev/null; then
    echo "anyrun is not available via brew. please install manually."
    exit 1
else
    echo "unsupported package manager. please install anyrun manually."
    exit 1
fi

echo "anyrun installed"