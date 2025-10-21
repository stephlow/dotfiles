#!/bin/bash

echo "initializing system"
./system/init.sh

if command -v pacman &> /dev/null; then
    echo "initializing hypr"
    ./hypr/init.sh
fi

echo "initializing zsh"
./zsh/init.sh

echo "initializing docker"
./docker/init.sh

echo "initializing ghostty"
./ghostty/init.sh

echo "initializing git"
./git/init.sh

echo "initializing rust"
./rust/init.sh

echo "initializing node"
./node/init.sh

echo "initializing nvim"
./nvim/init.sh

