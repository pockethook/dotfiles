set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-fugitive'
Plugin 'mileszs/ack.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'mtth/scratch.vim'
Plugin 'Taghighlight'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()
filetype plugin indent on

syntax enable
set background=dark
colorscheme solarized

set wildmenu
set wildmode=list:longest
set number
set cursorline
set undofile
set visualbell

set tabstop=4
set shiftwidth=4
set softtabstop=4
set colorcolumn=80

au FileType python setl et 

set mouse=a
set completeopt=menu,menuone,longest
set pumheight=15

nnoremap <F5> :redraw!<CR>
nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l

let mapleader=' '
nnoremap <Leader>q :q<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>e :e
nnoremap <Leader>v :vsplit 
nnoremap <Leader>s :split 
nnoremap <Leader>p :CtrlP<CR>
nnoremap <Leader>r <C-W>R
nnoremap <Leader>h <C-W>H
nnoremap <Leader>j <C-W>J
nnoremap <Leader>k <C-W>K
nnoremap <Leader>l <C-W>L

nnoremap <Leader><Space> z<CR>
nnoremap <Leader>n zz
nnoremap <Leader>f zM
nnoremap <Leader>o zR

hi Class ctermfg= 1
"hi DefinedName ctermfg=
"hi Enumerator ctermfg=
hi Function ctermfg= 9
"hi EnumerationName ctermfg=
hi Member ctermfg= 4
"hi Structure ctermfg=
hi Type ctermfg= 3
"hi Union ctermfg=
"hi GlobalConstant ctermfg=
"hi GlobalVariable ctermfg=
"hi LocalVariable ctermfg=

let g:ycm_confirm_extra_conf=0
