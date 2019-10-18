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

" Turn on numbered rules and syntax highlighting 
set nu
syntax on

" Setup indentation conform PEP 8 for Python
set tabstop=2 
set softtabstop=2 
set shiftwidth=2 
au BufNewFile, BufRead *.py
  \ set tabstop=4 
  \ set softtabstop=4 
  \ set shiftwidth=4 
  \ set textwidth=79
	\ set expandtab 
  \ set autoindent 
	\ set fileformat=unix

" Turn on NERDTree or toggle via ctrl + n
au vimenter * NERDTree
nmap <C-n> :NERDTreeToggle<CR>

" Setup Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
