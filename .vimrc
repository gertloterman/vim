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
" Closing parenthesis/bracket/quote generator
Plugin 'jiangmiao/auto-pairs'
" Closing tag generator
Plugin 'alvan/vim-closetag'
" Python syntax checker
Plugin 'nvie/vim-flake8'
" Latex previewer
Plugin 'xuhdev/vim-latex-live-preview'
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
" Set crypthography method for -x files
set cm=blowfish2
" Set foldmethod to marker
set foldmethod=marker
" Default close all folds
set foldclose=all

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

" -----
" LATEX
" -----

" Assign ctrl + l to preview PDF
nmap <C-l> :LLPStartPreview<CR>
let g:livepreview_previewer = 'open -a Preview'
