set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'ervandew/supertab'
Bundle 'altercation/vim-colors-solarized'
Bundle 'MatlabFilesEdition'

filetype plugin indent on

inoremap jk <Esc>
syntax enable
