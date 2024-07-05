" vim-plug bootstrap
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

" Color Plugins
Plug 'sainnhe/sonokai'

" Not Colors
Plug 'preservim/nerdtree'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

Plug 'junegunn/fzf.vim'

Plug 'vim-airline/vim-airline'

Plug 'tpope/vim-abolish'

Plug 'vim-scripts/vim-auto-save'

Plug 'tpope/vim-sensible'

call plug#end()

" Color Setup
set nocompatible
set background=dark
colorscheme sonokai

" Basic environment variables
set number
set relativenumber

set autoindent
set smartindent
set cindent

set wrap
set linebreak

set hlsearch
set ignorecase
set smartcase

set mouse=a

set splitright
set splitbelow

set backspace=indent,eol,start
set encoding=utf-8

syntax on

" Setup tab depth
set tabstop=8
set softtabstop=0
set shiftwidth=2

set expandtab
set smarttab

autocmd FileType python setlocal shiftwidth=4
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType yml setlocal ts=2 sts=2 sw=2 expandtab

" Configure NERDTree
" autocmd VimEnter * NERDTree
noremap <C-n> :NERDTreeFind<CR>

" Configure fzf
noremap <C-p> :GitFiles<CR>
noremap <leader>p :Files<CR>

" Configure autosave
let g:auto_save = 1
let g:auto_save_in_insert_mode = 0
