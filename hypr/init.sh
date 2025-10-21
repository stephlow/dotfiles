#!/bin/bash

echo "installing hypr"

sudo pacman -S --noconfirm hyprland

echo "symlinking hypr config"
ln -sfn $(pwd)/hypr/config ~/.config/hypr

echo "hypr initialized"
