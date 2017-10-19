if [ -d $HOME/.emacs ]; then
    echo "removing .emacs"
    rm ~/.emacs
fi

if [ -d $HOME/.emacs.d ]; then
    echo "remove emacs.d folder"
    rm -rf ~/.emacs.d
fi

echo "adding .emacs and .emacs.d"
cp ~/dotfiles/emacs/.emacs ~/.emacs
cp -r ~/dotfiles/emacs/.emacs.d ~/.emacs.d

