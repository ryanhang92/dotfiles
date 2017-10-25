if [ -d $HOME/.gitconfig.old ]; then
    echo "removing old gitconfig"
    rm ~/.gitconfig.old
fi

if [ -d $HOME/.gitignore_global.old ]; then
    echo "removing old gitignore"
    rm ~/.gitignore_global.old
fi

if [ -d $HOME/.gitconfig ]; then
    echo "removing gitconfig"
    mv ~/.gitconfig ~/.gitconfig.old
fi

if [ -d $HOME/.gitignore_global ]; then
    echo "removing gitignore"
    mv ~/.gitignore_global ~/.gitignore_global.old
fi

echo "adding ryan's git config and git ignore"
cp ~/dotfiles/git/.gitconfig ~/.gitconfig
cp ~/dotfiles/git/.gitignore_global ~/.gitignore_global
