#!/bin/bash
#Installation script for tomazcuber's custom dotfiles. 
#--------------------------------------------------------------
#Create Symbolic Links
_dir="$PWD"
if [ ! -f "$HOME/.vimrc" ] || [ ! -L "$HOME/.vimrc" ]; then
	ln -sv "$_dir/vim/.vimrc" ~ 
else 
	rm "$HOME/.vimrc"
	ln -sv "$_dir/vim/.vimrc" ~
fi

#--------------------------------------------------------------
#Vim Configuration:

#Install Vundle
if [ ! -d "$HOME/.vim/bundle/Vundle.vim" ]; then
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

#install all plugins in .vimrc:
vim +PluginInstall +qall
