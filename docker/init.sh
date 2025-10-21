#!/bin/bash

echo "installing docker"

if command -v pacman &> /dev/null; then
    sudo pacman -S docker
    sudo systemctl enable docker && sudo systemctl start docker
elif command -v brew &> /dev/null; then
    brew install colima docker
    colima start
else
    echo "unsupported package manager. please install docker manually."
    exit 1
fi

echo "docker initialized"
