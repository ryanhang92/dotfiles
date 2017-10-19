if [ -d $HOME/.bash_profile ]; then
    echo "removing old bash config"
    rm ~/.bash_profile
fi

echo "adding my bash config"
cp ~/dotfiles/bash/.bash_profile ~/.bash_profile
