" It this file is not found automatically you are using ViM < 7.4,
" make a symlink from ~/.vimrc -> ~/.vim/vimrc

set nocompatible
" set modeline modelines=1
set hlsearch
set incsearch
syntax on
set showcmd
set showmode
set ruler
filetype on
filetype plugin on
filetype plugin indent on
set bs=2

hi Search term=reverse ctermfg=lightred ctermbg=gray
hi DiffChange term=bold ctermfg=black ctermbg=lightgray
hi DiffAdd term=bold ctermfg=black ctermbg=lightblue
hi DiffDelete term=bold ctermfg=darkblue ctermbg=lightblue
hi DiffText term=reverse cterm=bold ctermfg=black ctermbg=red

" Navigation between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
