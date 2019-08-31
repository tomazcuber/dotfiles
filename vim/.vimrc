set nocompatible            
filetype off                  

syntax enable       " enable syntax highlighting
set number          " show line numbers
set relativenumber  " show relative numbers
set tabstop=4       " set tabs to have 4 spaces
set shiftwidth=4    " identation size
set autoindent      " indent when moving to the next line while writing code
set expandtab       " expand tabs into spaces
set shiftwidth=4    " when using the >> or << commands, shift lines by 4 spaces
set cursorline      " show a visual line under the cursor's current line
set showmatch       " show the matching part of the pair for [] {} and ()
set showcmd         " show last used command in bottom-right bar

" Vundle Init
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'gmarik/Vundle.vim'
Plugin 'jacoborus/tender.vim'
Plugin 'tpope/vim-surround'

" Vundle End
call vundle#end()            
filetype plugin indent on     

" Color Schemes
colorscheme tender 
set termguicolors	" enables 24-bit color schemes on terminal

" Python syntax highlighting features
let python_highlight_all = 1
 
" Command-line Autocompletion
set wildmenu			" enables visual menu for commmand autocompletion
set wildmode=longest,full	" completes longest string first, then run through the rest of the list
