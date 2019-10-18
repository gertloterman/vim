" Setup plugin manager
set nocompatible 
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Plugin manager for Vim
Plugin 'VundleVim/Vundle.vim'
" File browsing
Plugin 'scrooloose/nerdtree' 
" Syntax checker
Plugin 'vim-syntastic/syntastic'
" Syntax checker conform PEP 8 for Python
Plugin 'nvie/vim-flake8' 
" Autoindentation conform PEP 8 for Python
Plugin 'vim-scripts/indentpython.vim' 
call vundle#end()            
filetype plugin indent on   

" Turn on rule numbers 
set nu

" Turn on syntax highlighting
syntax on

" Turn on encoding in UTF-8
set encoding=utf-8

" Setup indentation  
set tabstop=2 
set softtabstop=2 
set shiftwidth=2 

" Setup indentation conform PEP 8 for Python 
au BufNewFile, BufRead *.py
  \ set tabstop=4 
  \ set softtabstop=4 
  \ set shiftwidth=4 
  \ set textwidth=79
	\ set expandtab 
  \ set autoindent 
	\ set fileformat=unix

" Turn on NERDTree
au vimenter * NERDTree

" Setup Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
