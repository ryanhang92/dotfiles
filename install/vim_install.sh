if [ -d $HOME/.vimrc ]; then
    echo "removing vimrc"
    rm ~/.vimrc &&
fi

echo "adding ryan's vimrc"
cp ../vim/.vimrc ~/.vimrc

