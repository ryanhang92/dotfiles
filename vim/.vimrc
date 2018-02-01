"Install Plugins


" Vundle (just for YCM)
set nocompatible              " be iMproved, required
filetype off                  " required
" set runtime path and initailize vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" YCM
Plugin 'Valloric/YouCompleteMe'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" VimPlug
" Install vim-plug if we don't already have it
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'crusoexia/vim-monokai'
Plug 'captbaritone/molokai'
Plug 'altercation/vim-colors-solarized'
Plug 'ajh17/spacegray.vim'

Plug 'scrooloose/nerdtree'

Plug 'Valloric/YouCompleteMe', { 'do': './install.py', 'for': 'cpp' }

Plug 'scrooloose/syntastic'

Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'rking/ag.vim'

Plug 'tpope/vim-surround'

Plug 'tpope/vim-repeat'

Plug 'tpope/vim-fugitive'

Plug 'airblade/vim-gitgutter'

Plug 'vimwiki/vimwiki'

Plug 'majutsushi/tagbar'

Plug 'godlygeek/tabular'

call plug#end()


" Colors {{{
syntax enable           " enable syntax processing
" }}}

" Spaces & Tabs {{{
set tabstop=4           " 4 space tab
set expandtab           " use spaces for tabs
set softtabstop=4       " 4 space tab
set shiftwidth=4
set modelines=1
filetype indent on
filetype plugin on
set autoindent
" }}}

" UI Layout {{{
set number              " show line numbers
set showcmd             " show command in bottom bar
set nocursorline        " highlight current line
set wildmenu
set lazyredraw
set showmatch           " higlight matching parenthesis
set fillchars+=vert:┃
" }}}

" Searching {{{
set ignorecase          " ignore case when searching
set incsearch           " search as characters are entered
set hlsearch            " highlight all matches
" }}}

" Folding {{{
"=== folding ===
set foldmethod=indent   " fold based on indent level
set foldnestmax=10      " max 10 depth
set foldenable          " don't fold files by default on open
nnoremap <space> za
set foldlevelstart=10   " start with fold level of 1
" }}}

" Syntastic {{{
let g:syntastic_python_flake8_args='--ignore=E501'
let g:syntastic_ignore_files = ['.java$']
let g:syntastic_python_python_exec = 'python3'
" }}}

" Backups {{{
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
" }}}


" airline {{{
set laststatus=2
let g:airline_theme = 'zenburn'
let g:airline_left_sep = ''
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_right_sep = ''
" }}}

" Ravel's Configs
set showcmd   " display incomplete commands
set incsearch   " do incremental searching
set backspace=indent,eol,start
set modelines=1

" Linewrap up/down
nnoremap j gj
nnoremap k gk

" Window Navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase
set autoindent

" Tabs to spaces
set tabstop=4
set shiftwidth=4
set expandtab

"Make finds center on screen
nnoremap n nzz 
nnoremap N Nzz 

if system("echo -n \"$(uname)\"") == "Darwin"
    "Copy/Pasting on Mac
    map <C-v> :r !pbpaste<CR>
    map <C-c> :w !pbcopy<CR><CR>
endif

" Plugin Keys

" Toogle nerdTree with C-n
map <C-n> :NERDTreeToggle<CR>

" Toggle Tagbar with f8
nmap <F8> :TagbarToggle<CR>

" Ctrl P to C-p
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" jkescape
:imap jk <Esc>

:nnoremap <Tab> :bnext<CR>
:nnoremap <S-Tab> :bprevious<CR>

syntax on
colorscheme monokai

