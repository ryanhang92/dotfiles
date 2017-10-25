if [ -d $HOME/.vimrc.old ]; then
    echo "removing old vimrc"
    rm ~/.vimrc.old
fi

if [ -d $HOME/.vimrc ]; then
    echo "removing vimrc"
    mv ~/.vimrc ~/.vimrc.old
fi

echo "adding ryan's vimrc"
cp ~/dotfiles/vim/.vimrc ~/.vimrc

