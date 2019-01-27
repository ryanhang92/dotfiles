" Install Plugins with Vim Plug

" VimPlug
" Install vim-plug if we don't already have it
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" Neovim auto complete
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

" Or Vim completes me, just use Tab git clone git://github.com/ajh17/VimCompletesMe.git ~/.vim/pack/vendor/start/VimCompletesMe - Seems to work better than Ctrl-n

" General Plugins
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-bufferline'
Plug 'cespare/vim-toml'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'honza/vim-snippets'
Plug 'godlygeek/tabular'
Plug 'junegunn/goyo.vim', {'on': 'Goyo'}
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all --no-update-rc' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'justinmk/molokai'
Plug 'justinmk/vim-sneak'
Plug 'jlanzarotta/bufexplorer'
Plug 'machakann/vim-highlightedyank'
Plug 'mhinz/vim-grepper'
Plug 'ntpeters/vim-better-whitespace'
Plug 'rstacruz/sparkup', {'rtp': 'vim'}
Plug '/roxma/nvim-yarp'
Plug '/roxma/vim-hug-neovim-rpc'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'Shougo/vimproc', {'do': 'make'}
Plug 'sickill/vim-pasta'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/visualrepeat'
Plug 'w0rp/ale'
Plug 'vimwiki/vimwiki'

" Language Plugins
Plug 'vim-scripts/Arduino-syntax-file'
Plug 'davidhalter/jedi-vim', {'for': ['python', 'pyrex']}
Plug 'eagletmt/ghcmod-vim'
Plug 'eagletmt/neco-ghc'
Plug 'fatih/vim-go', {'for': 'go'}
Plug 'garyburd/go-explorer',
  \ {'for': 'go', 'do': 'go get -u github.com/garyburd/go-explorer/src/getool'}
Plug 'hspec/hspec.vim'
Plug 'hynek/vim-python-pep8-indent'
Plug 'idris-hackers/idris-vim'
Plug 'jneen/ragel.vim'
Plug 'pbrisbin/html-template-syntax'
Plug 'rust-lang/rust.vim'
Plug 'sebastianmarkow/deoplete-rust'
Plug 'solarnz/thrift.vim', {'for': 'thrift'}
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-after'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'zchee/deoplete-go', {'do': 'make'}

" Color Schemes
Plug 'crusoexia/vim-monokai'
Plug 'captbaritone/molokai'
Plug 'altercation/vim-colors-solarized'
Plug 'ajh17/spacegray.vim'
Plug 'sheerun/vim-polyglot'
Plug 'trevordmiller/nova-vim'

call plug#end()

" Plugin Configurations

" Nerdtree
map <C-n> :NERDTreeToggle<CR> " Toogle nerdTree with C-n

" ctrl-p
let g:ctrlp_map = '<C-p>' " Ctrl P to C-p
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra' "Search in the current directory

" Airline {{{
set laststatus=2
let g:airline_theme = 'zenburn'
let g:airline_left_sep = ''
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_right_sep = ''
" }}}

" Syntastic {{{
let g:syntastic_python_flake8_args='--ignore=E501'
let g:syntastic_ignore_files = ['.java$']
let g:syntastic_python_python_exec = 'python3'
" }}}

" Folding {{{
set foldmethod=indent   " fold based on indent level
set foldnestmax=10      " max 10 depth
set foldenable          " don't fold files by default on open
nnoremap <space> za
set foldlevelstart=10   " start with fold level of 1
" }}}

" Backups {{{
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
" }}}

" General Configuration
set nocp                " Don't need compatibility with vi
set nobk                " Don't make backups
set nowb                " Don't make backups before overwrite
set bs=indent,eol,start " Allow backspace over everything
set hi=50               " Keep 50 lines of command line history
set ru                  " Show the cursor position all the time
" set rnu                 " Relative line numbering
set nu                  " Absolute line number for current line
set ls=2                " Always show status line
set sc                  " Display incomplete commands
set is                  " Do incremental searching
set ai                  " Keep indentation from previous line
set et                  " Use spaces to insert tabs
set sw=4                " Number of spaces to use for each indent
set ts=4                " Number of spaces tab will count for
set nowrap              " No wrapping
set ic scs              " Smart case insensitive
set icm=split           " Show :s result incrementally
set tc=match            " Case sensitive for tag search
set sta                 " Smart tab
set bg=dark             " We have a dark background
set tw=78               " Wrap text after 78 characters
set lz                  " Lazy redraw; faster macros
set ve=all              " Virtual edit
set vb                  " Use visual bell instead of beeping"
set sb                  " split below
set spr                 " split right
set so=3                " leave 3 lines below cursor
set fdm=marker          " Marker fold method
set hls                 " Highlight search results
set wmnu                " Menu for tab completion
set mouse=a             " Mouse support
set so=10               " 10 lines of context when scrolling
set showcmd             " show command in bottom bar
set nocursorline        " highlight current line
" set cursorline
set wildmenu
set lazyredraw
set showmatch           " higlight matching parenthesis
set fillchars+=vert:┃
set hlsearch            " highlight all matches

" Use true color if not on Terminal.app
if $TERM_PROGRAM != "Apple_Terminal"
    set tgc
endif

" Show invisible characters
set list lcs=tab:»\ ,trail:·

colo molokai

" File patterns to ignore in wildcard expansions.
set wig+=*/cabal-dev,*/dist,*.o,*.class,*.pyc,*.hi

" Support codex tags.
set tags+=codex.tags

" Make line numbers in terminal more readable
hi LineNr ctermfg=245

" Invisible vertical split
hi VertSplit guibg=bg guifg=bg

" Use global python. Ensures nvim works with Python plugins inside a virtualenv.
let g:python_host_prog = '/usr/local/bin/python'

" Space = leader
let mapleader = "\<Space>"

"Make finds center on screen
nnoremap n nzz 
nnoremap N Nzz 

" Spaces & Tabs {{{
filetype indent on
filetype plugin on
" }}}
"

if system("echo -n \"$(uname)\"") == "Darwin"
    "Copy/Pasting on Mac
    map <C-v> :r !pbpaste<CR>
    map <C-c> :w !pbcopy<CR><CR>
endif

" ----------------------------------------------------------------------------

" Personal Customizations and Style

" jk escape
:imap jk <Esc>

" Window Navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Quick switch buffers
:nnoremap <Tab> :bnext<CR>
:nnoremap <S-Tab> :bprevious<CR>

syntax on
"colorscheme monokai
colorscheme molokai
"colorscheme nova
