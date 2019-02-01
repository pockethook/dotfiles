set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'Taghighlight'
Plugin 'Valloric/YouCompleteMe'
Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kien/ctrlp.vim'
Plugin 'mbbill/undotree'
Plugin 'mileszs/ack.vim'
Plugin 'mtth/scratch.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'w0rp/ale'
Plugin 'skywind3000/asyncrun.vim'
call vundle#end()
filetype plugin indent on

syntax enable
set background=dark
colorscheme solarized

set wildmenu
set wildmode=list:longest
set number
set relativenumber
set ruler
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
nnoremap <Leader>u :UndotreeToggle<CR>
nnoremap <Leader>a :Ack
nnoremap <Leader>s :Scratch<CR>
nnoremap <Leader>p :AsyncRun python %<CR>
nnoremap <Leader>g :!g++ -g3 -std=c++14 -o /tmp/out % && /tmp/out<CR>
nnoremap <Leader>t :tabe<CR>
nnoremap <Leader>m :AsyncRun make -j9<CR>
nnoremap <Leader>n :AsyncRun make upload<CR>
nnoremap <Leader>r <C-W>R
nnoremap <Leader>h <C-W>H
nnoremap <Leader>j <C-W>J
nnoremap <Leader>k <C-W>K
nnoremap <Leader>l <C-W>L
nnoremap <Leader><Space> zz<CR>
nnoremap <Leader>gb :Gblame<CR>
nnoremap <Leader>gd :Gdiff<CR>
nnoremap <Leader>ge :Gedit<CR>
nnoremap <Leader>gl :Glog<CR>
nnoremap <Leader>gs :Gstatus<CR>

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
