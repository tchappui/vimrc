" Basic vim comfiguration file for python and web development
" author: Thierry Chappuis

set nocompatible            " required for vundle
filetype off                " required for vundle

set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4

set textwidth=79
set number

colorscheme phd
set cursorline

" Remapping the Esc key for faster access in escape mode
imap jj <Esc>

" set the runtime path to include Vundle and initialize
set rtp+=~/vimfiles/bundle/Vundle.vim/

call vundle#begin('~/vimfiles/bundle/')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" add all the plugins here
Plugin 'scrooloose/nerdtree'
Plugin 'mattn/emmet-vim'

" all the plugins must be added before the following line
call vundle#end()

syntax on
filetype plugin indent on   " required

" fix the default behaviour of the backspace key
set backspace=indent,eol,start

" Split nativation
set splitbelow
set splitright

" Some remaps for window navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Reload files changed outside vim
set autoread


" Map a command to execute a python script
let mapleader = ","

"Map a command to execute NERDTree
map <Leader>nt :NERDTree<CR>

map <Leader>py :w<CR>:!py %<CR>

" Map a command to set encoding to utf-8
map <Leader>utf :set fenc=utf-8 enc=utf-8<CR>

" Map a command to format transform a text data file from
" Tab-separated to CSV
map <Leader>csv :%s/^\([^\t]*\)\t\+\([^\t]*\)$/"\1","\2"/g<CR>

" Configuration of the grep tool to use ack instead
set grepprg=ack

" Auto-reload my vimrc configuration file
augroup reload_vimrc " {
	autocmd!
	autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

autocmd FileType python setl sw=4 sts=4 enc=utf8 fenc=utf8
autocmd FileType html,css,javascript,php setl sw=2 sts=2 et enc=utf8 fenc=utf8

" Enable autocompletion
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS


