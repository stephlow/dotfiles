#!/bin/bash

echo "installing hypr"

sudo pacman -S hyprland

echo "symlinking hypr config"
ln -sfn $(pwd)/config/hypr ~/.config/hypr

echo "hypr initialized"
