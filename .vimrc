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
Plug 'justinmk/vim-sneak'
Plug 'jlanzarotta/bufexplorer'
Plug 'machakann/vim-highlightedyank'
Plug 'mhinz/vim-grepper'
Plug 'mhinz/vim-signify'
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
Plug 'sheerun/vim-polyglot' " Language pack for use with syntax on
Plug 'solarnz/thrift.vim', {'for': 'thrift'}
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-after'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'zchee/deoplete-go', {'do': 'make'}

" Color Schemes
Plug 'crusoexia/vim-monokai'
Plug 'altercation/vim-colors-solarized'
Plug 'ajh17/spacegray.vim'
Plug 'trevordmiller/nova-vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'justinmk/molokai'
Plug 'rakr/vim-one'

call plug#end()


" ----------------------------------------------------------------------------
"  Global autocmds {{{1
" ----------------------------------------------------------------------------

augroup vimrc_ft_hooks
    autocmd!
    autocmd FileType go call s:SetupGo()
    autocmd FileType gitcommit setlocal tw=72
    autocmd FileType python call s:SetupPython()
augroup end

" Plugin Configurations

" ale {{{2
let g:ale_open_list = 1
let g:ale_sign_error='⊘'
let g:ale_sign_warning='⚠'
let g:ale_lint_on_save = 1
let g:ale_lint_on_enter = 0
let g:ale_lint_on_text_changed = 0
let g:ale_emit_conflict_warnings = 0

let g:ale_linters = {
    \ 'go': ['go vet', 'golint', 'go build'],
    \ 'haskell': ['stack-ghc-mod'],
    \ }
let g:ale_linter_aliases = {
    \ 'pandoc': ['markdown']
    \ }

" Show 5 lines of errors (default: 10)
let g:ale_list_window_size = 10

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

" ctags {{{2
set tags=./tags,tags;$HOME; "recurrsively search up for a tags file

" deoplete {{{2
set completeopt=menu,preview,longest
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#go#gocode_binary = $GOPATH . '/bin/gocode'

" Jedi Vim {{{2
let g:jedi#show_call_signatures = 0
let g:jedi#use_tabs_not_buffers = 1

" vim-go {{{2
let g:go_def_mapping_enabled = 0
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1
let g:go_term_enabled = 1

let g:go_highlight_generate_tags = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1

let g:go_highlight_array_whitespace_error = 0
let g:go_highlight_chan_whitespace_error = 0
let g:go_highlight_space_tab_error = 0
let g:go_highlight_trailing_whitespace_error = 0

let g:go_snippet_engine = "neosnippet"

" grepper {{{2
let g:grepper =
    \ {
    \ 'tools': ['rg', 'ag', 'git'],
    \ 'open': 1,
    \ 'switch': 1,
    \ 'jump': 0,
    \ 'dir': 'filecwd',
    \ }

" Gitgutter {{{
" highlight clear SignColumn
highlight GitGutterAdd ctermfg=green
highlight GitGutterChange ctermfg=yellow
highlight GitGutterDelete ctermfg=red
highlight GitGutterChangeDelete ctermfg=yellow
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
"set backup
"set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
"set backupskip=/tmp/*,/private/tmp/*
"set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
"set writebackup
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
" set nocursorline        " highlight current line
set cursorline
set wildmenu
set lazyredraw
set showmatch           " higlight matching parenthesis
set fillchars+=vert:┃
set hlsearch            " highlight all matches
set colorcolumn=80

" Use true color if not on Terminal.app
if $TERM_PROGRAM != "Apple_Terminal"
    set tgc
endif

" Show invisible characters
" set list lcs=tab:»\ ,trail:·

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

" Auto detect and setup by filetype {{{
filetype on
filetype indent on
filetype plugin on
" }}}
"

if system("echo -n \"$(uname)\"") == "Darwin"
    "Copy/Pasting on Mac
    map <C-v> :r !pbpaste<CR>
    map <C-c> :w !pbcopy<CR><CR>
endif

" True color support
if (has("nvim"))
"For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
set termguicolors
endif

" Language specific function
" ----------------------------------------------------------------------------
"
function! s:SetupPython() " {{{2
    let b:delimitMate_nesting_quotes = ['"','''', '`']
    call s:ClosePreviewOnMove()
endfunction

function! s:SetupGo() " {{{2
    setlocal noet
    nmap <buffer> <leader>d <Plug>(go-def)

    " Search for declarations in the current file or directory.
    nmap <buffer> <leader>ss :GoDecls<CR>
    nmap <buffer> <leader>sd :GoDeclsDir<CR>

    call s:ClosePreviewOnMove()
endfunction

" ClosePreviewOnMove sets up an autocmd to close the preview window once the
" cursor moves.
function! s:ClosePreviewOnMove() " {{{2
    autocmd CursorMovedI <buffer> call s:ClosePreview()
    autocmd InsertLeave  <buffer> call s:ClosePreview()
endfunction


" Personal Customizations and Style
" ----------------------------------------------------------------------------
"

" jk escape
:imap jk <Esc>

" Window Navigation (ctrl-n hjlk to move between splits)
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Quick switch buffers
:nnoremap <Tab> :bnext<CR>
:nnoremap <S-Tab> :bprevious<CR>

" Color Themes
set t_Co=256   " This is may or may not needed.

syntax on

set background=dark " Can set to light for other themes
colorscheme PaperColor
"colorscheme monokai
"colorscheme molokai
"colorscheme nova
"colorscheme one
