set nocompatible            " required for vundle
filetype off                " required for vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/vimfiles/bundle/Vundle.vim/
call vundle#begin('~/vimfiles/bundle/')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" add all the plugins here

" all the plugins must be added before the following line
call vundle#end()

syntax on
filetype plugin indent on   " required

" fix the behaviour of the backspace key
set backspace=indent,eol,start

" Split nativation
set splitbelow
set splitright

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Map a command to execute a python script
let mapleader = ","
map <Leader>py :w<CR>:!py %<CR>

