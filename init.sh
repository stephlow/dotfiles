#!/bin/bash

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -sfn $(pwd)/.gitconfig $HOME/.gitconfig
ln -sfn $(pwd)/.gitexcludes $HOME/.gitexcludes
ln -sfn $(pwd)/.vimrc $HOME/.vimrc
ln -sfn $(pwd)/.zshrc $HOME/.zshrc
ln -sfn $(pwd)/.npmrc $HOME/.npmrc
