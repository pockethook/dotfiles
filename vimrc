set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'ervandew/supertab'
Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'majutsushi/tagbar'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'mileszs/ack.vim'
Bundle 'mtth/scratch.vim'
Bundle 'Rip-Rip/clang_complete'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'a.vim'
Bundle 'fugitive.vim'
Bundle 'pyflakes.vim'

filetype plugin indent on

syntax enable
set background=dark
colorscheme solarized

set wildmenu
set showcmd
set wildmode=list:longest
set number
set cursorline
set ruler
set undofile
