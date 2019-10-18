#!/bin/bash

# Update Package List
sudo apt-get update

# Upgrade All Packages
sudo apt-get upgrade

# Install Vim Text Editor
sudo apt-get install vim

# Install Git Version Control System
sudo apt-get install git

# Install Vundle Plugin Manager
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Create Symbolic Links
ln -s .vimrc ~/.vimrc
ln -s .inputrc ~/.inputrc
