" ------
" VUNDLE
" ------

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Plugin manager
Plugin 'VundleVim/Vundle.vim'
" File browser
Plugin 'scrooloose/nerdtree'
" Status line
Plugin 'vim-airline/vim-airline'
" Git wrapper
Plugin 'tpope/vim-fugitive'
" Debugger
Plugin 'joonty/vdebug'
" Closing parenthesis/bracket/quote generator
Plugin 'jiangmiao/auto-pairs'
" Closing tag generator
Plugin 'alvan/vim-closetag'
" Syntax checker
Plugin 'scrooloose/syntastic'
" Python autocompletion engine
Plugin 'davidhalter/jedi-vim'
call vundle#end()
filetype plugin indent on

" ---
" VIM
" ---

" Show numbered rules
set nu
" Highlight syntax
syntax on
" Limit text to 79 characters
set textwidth=79
" Set file format to unix
set fileformat=unix
" Insert spaces for tab key
set expandtab
" Make a tab 4 spaces wide
set tabstop=4
" Make a shift of intendation 4 spaces wide
set shiftwidth=4
" Insert/delete 4 spaces for tab/backspace key
set softtabstop=4
" Apply indentation of previous line
set autoindent

" --------
" NERDTREE
" --------

" Assign ctrl + t to show/hide the file browser
nmap <C-t> :NERDTreeToggle<CR>

" --------
" CLOSETAG
" --------

" Enable closing tag generator for all file types
let g:closetag_filenames = '*'

" ---------
" SYNTASTIC
" ---------

" Automatically update error location list
let g:syntastic_always_populate_loc_list = 1
" Automatically open/close error location list when yes/no errors
let g:syntastic_auto_loc_list = 1
" Run syntastic when opening a file
let g:syntastic_check_on_open = 1
" Don't run syntastic when saving on closing a file
let g:syntastic_check_on_wq = 0
