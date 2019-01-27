# Vim as an IDE

#Basics 
    undo is u
    redo is ctrl r
    jk escape is active for me

    # Buffers / Tabs
        # Buffers as files

        vim file, opens file
        vim file1, file2, etc opens many file in multiple buffers
        :e {path to file, can tab to auto complete}
        :bnext or :h buffer-list, with my new bindings it is tab and shift tab
        :bnew, :enew, split or new blank buffers
        :bdelete or :bd {file name or number}
        :ls to list buffers

        # window management

        :vsplit {filename}, :split {filename}
        ctrl-w then arrow keys to cycle windows

        # Tabs as workspaces

        :tabedit {file}   edit specified file in a new tab
        :tabfind {file}   open a new tab with filename given, searching the 'path' to find it
        :tabclose         close current tab
        :tabclose {i}     close i-th tab
        :tabonly          close all other tabs (show only the current tab)
        :tabs         list all tabs including their displayed windows
        :tabm 0       move current tab to first
        :tabm         move current tab to last
        :tabm {i}     move current tab to position i+1

        In normal mode, you can type:
        gt            go to next tab
        gT            go to previous tab
        {i}gt         go to tab in position i
        :tabn         go to next tab
        :tabp         go to previous tab
        :tabfirst     go to first tab
        :tablast      go to last tab

    # File Search
        Ctrl - p, plugin
        :Sex, or neo tree


Key Vim Commands:

https://vim.rtorr.com/
https://stackoverflow.com/questions/53664/how-to-effectively-work-with-multiple-files-in-vim

Key Plugin Commands:

Plug 'scrooloose/nerdtree'
    C-n to open nerd tree

Plug 'Valloric/YouCompleteMe', { 'do': './install.py', 'for': 'cpp' }

Plug 'scrooloose/syntastic'

Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'rking/ag.vim'
    :Ag [options] {pattern} [{directory}]

Plug 'tpope/vim-surround'
    https://github.com/tpope/vim-surround

Plug 'tpope/vim-repeat'

Plug 'tpope/vim-fugitive'
    https://github.com/tpope/vim-fugitive

Plug 'airblade/vim-gitgutter'

Plug 'vimwiki/vimwiki'

Plug 'majutsushi/tagbar'
    nmap <F8> :TagbarToggle<CR>

Plug 'godlygeek/tabular'
    http://vimcasts.org/episodes/aligning-text-with-tabular-vim/

