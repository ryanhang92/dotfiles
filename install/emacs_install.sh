if [ -d $HOME/.emacs ]; then
    echo "removing .emacs"
    rm ~/.emacs
fi

if [ -d $HOME/.emacs.d ]; then
    echo "remove emacs.d folder"
    rm -rf ~/.emacs.d
fi

echo "adding .emacs and .emacs.d"
cp ../emacs/.emacs ~/.emacs
cp -r ../emacs/.emacs.d ~/.emacs.d

