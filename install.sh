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

#YouCompleteMe compilation:
sudo apt install build-essential cmake python3-dev
cd "$HOME/.vim/bundle/youcompleteme"
#python3 install.py --all
python3 install.py --clang-completer

#install all plugins in .vimrc:
vim +PluginInstall +qall
