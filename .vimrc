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
" General syntax checker 
Plugin 'scrooloose/syntastic'
" Comment generator
Plugin 'tpope/vim-commentary'
" Code formatter
Plugin 'Chiel92/vim-autoformat'
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
" Set file format to unix
set fileformat=unix
" Limit text to 79 characters
set textwidth=79
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
" Activate backspace
set backspace=indent,eol,start

" --------
" NERDTREE
" --------

" Assign ctrl + t to show/hide the file browser
nmap <C-t> :NERDTreeToggle<CR>

" ---------
"  SYNTASTIC
"  ---------

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" ----------
" AUTOFORMAT
" ----------

" Assign ctrl + f to format code
nmap <C-f> :Autoformat<CR>

" -----
" LATEX
" -----

" Assign ctrl + l to preview PDF
nmap <C-l> :LLPStartPreview<CR>
let g:livepreview_previewer = 'open -a Preview'
