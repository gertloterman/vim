#!/bin/bash

# Install Vundle Plugin Manager
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install Flake8 Style Enforcer
brew install flake8

# Create Symbolic Links
ln -s .vimrc ~/.vimrc
ln -s .inputrc ~/.inputrc
