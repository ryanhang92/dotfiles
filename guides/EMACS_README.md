# emacs quick start

0) make sure emacs 24+ is installed M-x, emacs-version, https://apple.stackexchange.com/questions/229669/update-emacs-that-comes-with-os-x
* ln -s /usr/local/Cellar/emacs/24.5/Emacs.app /Applications, version should match 'brew info emacs'

1) For macOs make sure to enable option as meta key in terminal > preferences > keyboard tab

2) Install packages manually or copy my version of the .emacs.d in the right places, its not like vim plug adding to .emacs does not install

3) M-x list-packages, will ist all and refresh the contents and show the latest

# Use

C - x, C - f, search for and open file with enter
C - x, C - s, save
C - x, C - w, save with new name
C - x, C - c, save and exit all

M (default is alt or option) - x, then commands to cancel is C - g
    Top Commands:
    M - x term, a terminal


Plugin Commands
    f8, or fn-f8 shows the file tree, we can select stuff from there (neo-tree)
    C-c p f, search for file in projects and enter to open (projectile)

Windows
    C - x  o, cycle windows
    C - x 1, close active window
    C - x 2, close all except active
    C - x 3, split horiz
    C - x 4, split vert

Buffers
    M - x; ibuffer (markd with m and kill with d, or mark with d and kill with x)
    C - x  b, tab to auto complete options and enter to select, or type new name to open buffer
    C - x  -> , C - x  <-, buffer cycling
    C - x  C - b, list buffers
    C - C  C - l, stop list of buffers
    C - x  k, tab to complete kill a specific buffer by completeing or enter kills active one by default

