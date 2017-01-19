" It this file is not found automatically you are using ViM < 7.4,
" make a symlink from ~/.vimrc -> ~/.vim/vimrc

filetype on
set nocompatible " Do not behave like the original "vi"
" set modeline modelines=1 " Use the "vim:" modelines

set hlsearch " Hilight search
set ignorecase " Ignore case when searching
set smartcase " Be smart about case when searching
set incsearch " Incremental search
set history=10000 " Remember!
syntax on " Syntax highlighting.
set showcmd " Show command being entered.
set showmode " Show current mode.
set ruler " Show current row,colume.
filetype plugin on
filetype plugin indent on
set bs=2 " Let backspace behave _normal_.
set path+=** " Search for files to open in any subdirectories.
set wildmenu wildmode=longest:full,full " First match the longest, then tab through.

" Highlighting of searches and in vimdiff
hi Search term=reverse ctermbg=darkgray
hi DiffChange term=bold ctermfg=black ctermbg=lightgray
hi DiffAdd term=bold ctermfg=black ctermbg=lightblue
hi DiffDelete term=bold ctermfg=darkblue ctermbg=lightblue
hi DiffText term=reverse cterm=bold ctermbg=red

" Navigation between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" netrw settings
let g:netrw_banner=0        " Disable the banner
let g:netrw_browse_split=4  " Open in previous window
let g:netrw_altv=1          " Open splits to the right
let g:netrw_liststyle=3     " Tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" Setup folding
set foldlevelstart=2

" Python folding setup
"let g:SimpylFold_docstring_preview = 1
"let g:SimpylFold_fold_docstring = 0
let g:SimpylFold_fold_import = 0
