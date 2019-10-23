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
" Python autocompletion engine
Plugin 'davidhalter/jedi-vim'
" Python syntax checker
Plugin 'nvie/vim-flake8'
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
" Make a tab 2 spaces wide
set tabstop=2
" Make a shift of intendation 2 spaces wide
set shiftwidth=2
" Insert/delete 2 spaces for tab/backspace key   
set softtabstop=2
" Apply indentation of previous line
set autoindent

" --------
" NERDTREE
" --------

" Assign ctrl + t to show/hide the file browser
nmap <C-t> :NERDTreeToggle<CR>

" ------
" PYTHON
" ------

" Setup indentation conform PEP8 for Python
au BufNewFile, BufRead *.py
	\ set tabstop=4
	\ set softtabstop=4
	\ set shiftwidth=4
" Run syntax checker conform PEP8 for Python
au BufWritePost *.py call Flake8()
