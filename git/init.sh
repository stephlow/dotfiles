#!/bin/bash

echo "setting up git config"
ln -sfn $(pwd)/.gitconfig ~/.gitconfig
ln -sfn $(pwd)/.gitexcludes ~/.gitexcludes
ln -sfn $(pwd)/.gitmodules ~/.gitmodules

echo "git config set up"