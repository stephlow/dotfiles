#!/bin/bash

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

curl https://raw.githubusercontent.com/sainnhe/dotfiles/master/.zsh-theme-everforest-dark --output .zsh-theme-everforest-dark

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -sfn $(pwd)/.gitconfig $HOME/.gitconfig
ln -sfn $(pwd)/.gitexcludes $HOME/.gitexcludes
ln -sfn $(pwd)/.vimrc $HOME/.vimrc
ln -sfn $(pwd)/coc-settings.json $HOME/.vim/coc-settings.json
ln -sfn $(pwd)/.zshrc $HOME/.zshrc
ln -sfn $(pwd)/.zsh-theme-everforest-dark $HOME/.zsh-theme-everforest-dark
ln -sfn $(pwd)/.npmrc $HOME/.npmrc
