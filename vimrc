" It this file is not found automatically you are using ViM < 7.4,
" make a symlink from ~/.vimrc -> ~/.vim/vimrc
"

" ideas: https://github.com/mcantor/dotfiles/blob/master/vim/.vimrc
" set this using filetype=vim
" vim: fdm=marker foldenable sw=4 ts=4 sts=4
"
" {{{ something folded
" hihihihi
" }}}

filetype on
set nocompatible " Do not behave like the original "vi"

" Setup Vundle
" Download: git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
Plugin 'VundleVim/Vundle.vim'

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
set mouse=i " Enable mouse in insert mode.

" Highlighting of searches and in vimdiff
hi Search ctermfg=black ctermbg=yellow
hi DiffChange ctermfg=black ctermbg=lightgray
hi DiffAdd ctermfg=black ctermbg=white
hi DiffDelete ctermfg=black ctermbg=lightblue
hi DiffText ctermfg=black ctermbg=red
hi SpellBad term=reverse ctermbg=darkgreen

" Rebuild tags
" ctags --list-kinds=python
command! MakeTags !ctags -R --python-kinds=-i .

" Navigation between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" netrw settings
let g:netrw_banner=0        " Disable the banner
let g:netrw_browse_split=0
let g:netrw_preview=1       " Preview vertically
let g:netrw_winsize=25      " Use only 25% of the width for the directory listing.
let g:netrw_altv=1          " Open files to the right
let g:netrw_liststyle=3     " Tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

nnoremap ,<Tab> :Lexplore<CR> " Open/close netrw

" Insert a snippet from a template and position a cursor somewhere
nnoremap ,pymain :read $HOME/.vim/skeletons/pymain.py<CR>/Program<CR>
nnoremap ,pyfile :read $HOME/.vim/skeletons/pyfile.py<CR>/function<CR>

" Keep selection in visual mode after indent
vnoremap < <gv
vnoremap > >gv

" Setup folding
set foldlevelstart=2

" Python folding setup
Plugin 'tmhedberg/SimpylFold'
"let g:SimpylFold_docstring_preview = 1
"let g:SimpylFold_fold_docstring = 0
let g:SimpylFold_fold_import = 0

Plugin 'vim-syntastic/syntastic'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_auto_jump = 0
let g:syntastic_python_checkers=['pyflakes', 'python', 'pycodestyle']

call vundle#end()
