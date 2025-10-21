#!/bin/bash

echo "setting up git config"
ln -sfn $(pwd)/git/config/.gitconfig ~/.gitconfig
ln -sfn $(pwd)/git/config/.gitexcludes ~/.gitexcludes

echo "git config set up"