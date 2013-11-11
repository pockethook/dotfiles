set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'ervandew/supertab'
Bundle 'altercation/vim-colors-solarized'
Bundle 'tomasr/molokai'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
"Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
"Bundle 'kevinw/pyflakes-vim'
"Bundle 'majutsushi/tagbar'
Bundle 'mileszs/ack.vim'
"Bundle 'mtth/scratch.vim'
"Bundle 'Rip-Rip/clang_complete'
"Bundle 'Lokaltog/vim-easymotion'
Bundle 'a.vim'
"Bundle 'fugitive.vim'
"Bundle 'python.vim'
"Bundle 'cscope_macros.vim'
"Bundle 'octol/vim-cpp-enhanced-highlight'
Bundle 'xolox/vim-easytags'
Bundle 'xolox/vim-misc'

filetype plugin indent on

syntax enable
set background=dark
"let g:solarized_visibility = 'high'
"call togglebg#map("<F5>")
colorscheme solarized
"colorscheme molokai

set wildmenu
set showcmd
set wildmode=list:longest
set number
set cursorline
set ruler
set undofile

au FileType python setl ts=8 sw=4 sts=4 et

nnoremap <F5> :redraw!<CR>
nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l

if has('cscope')
	set cscopetag
	set csto=1
	if has('quickfix')
		set cscopequickfix=s-,g-,c-,t-,e-,f-,i-,d-
	endif
	if filereadable('cscope.out')
		cscope add cscope.out
	endif
	nnoremap <C-\>s :cs find s <C-R>=expand('<cword>')<CR><CR>
	nnoremap <C-\>g :cs find g <C-R>=expand('<cword>')<CR><CR>
	nnoremap <C-\>c :cs find c <C-R>=expand('<cword>')<CR><CR>
	nnoremap <C-\>t :cs find t <C-R>=expand('<cword>')<CR><CR>
	nnoremap <C-\>e :cs find e <C-R>=expand('<cword>')<CR><CR>
	nnoremap <C-\>f :cs find f <C-R>=expand('<cfile>')<CR><CR>
	nnoremap <C-\>i :cs find i ^<C-R>=expand('<cfile>')<CR>$<CR>
	nnoremap <C-\>d :cs find d <C-R>=expand('<cword>')<CR><CR>
endif

set mouse=a

set completeopt=menu,menuone,longest
set pumheight=15
"let g:SuperTabDefaultCompletionType='context'
"let g:clang_complete_auto=0
"let g:clang_complete_copen=1
let g:syntastic_cpp_compiler='g++'
let g:syntastic_cpp_compiler_options=' -std=c++0x'
let g:syntastic_python_checkers=['pep8']

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
