#!/bin/bash

# Install Vundle Plugin Manager
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install Homebrew
sr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Flake8 Style Enforcer
brew install flake8

# Install Tidy HTML/XML Formatter
brew install tidy-html5

# Install Python Formatter
brew install autopep8

# Create Symbolic Links
ln -s $PWD/.vimrc ~/.vimrc
