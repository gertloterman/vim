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
" Python Autocompletion engine
Plugin 'davidhalter/jedi-vim'
" Python syntax checker
Plugin 'nvie/vim-flake8'
" Python autoindentation
Plugin 'vim-scripts/indentpython.vim'
call vundle#end()
filetype plugin indent on

" --------
" NERDTREE
" --------

nmap <C-t> :NERDTreeToggle<CR>

" ------
" PYTHON
" ------

" Setup flake8
au BufWritePost *.py call Flake8()
" Setup indentation conform PEP 8 for Python
au BufNewFile, BufRead *.py
	\ set tabstop=4
	\ set softtabstop=4
	\ set shiftwidth=4
	\ set textwidth=79
	\ set expandtab
	\ set autoindent
	\ set fileformat=unix

" ---
" VIM
" ---

" Turn on numbered rules
set nu
" Turn on syntax highlighting
syntax on
" Setup indentation
set tabstop=2
set softtabstop=2
set shiftwidth=2
