#!/bin/bash
#Installation script for tomazcuber's custom dotfiles. 
#--------------------------------------------------------------
#Create Symbolic Links
_dir="$PWD"
ln -sv "$_dir/vim/.vimrc" ~ 

#--------------------------------------------------------------
#Vim Configuration:

#Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#Install all plugins in .vimrc:
vim +PluginInstall +qall
