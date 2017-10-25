if [ -d $HOME/.emacs.old ]; then
    echo "removing .emacs.old file"
    rm ~/.emacs.old
fi

if [ -d $HOME/.emacs.d.old ]; then
    echo "removing .emacs.d.old folder"
    rm -rf ~/.emacs.d.old

if [ -d $HOME/.emacs ]; then
    echo "removing .emacs file"
    mv ~/.emacs ~/.emacs.old
fi

if [ -d $HOME/.emacs.d ]; then
    echo "removing .emacs.d folder"
    mv ~/.emacs.d ~/.emacs.d.old
fi

echo "adding .emacs and .emacs.d"
cp ~/dotfiles/emacs/.emacs ~/.emacs
cp -r ~/dotfiles/emacs/.emacs.d ~/.emacs.d

