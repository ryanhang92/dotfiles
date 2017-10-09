if [ -d $HOME/.gitconfig ]; then
    echo "removing gitconfig"
    rm ~/.gitconfig
fi


if [ -d $HOME/.gitignore_global ]; then
    echo "removing git ignore"
    rm ~/.gitignore_global
fi


echo "adding ryan's git configs"
cp ../git/.gitconfig ~/.gitconfig
cp ../git/.gitignore_global ~/.gitignore_global
