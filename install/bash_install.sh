if [ -d $HOME/.bash_profile.old ]; then
    echo "removing old bash config"
    rm ~/.bash_profile.old
fi

if [ -d $HOME/.bash_profile ]; then
    echo "removing bash config"
    mv ~/.bash_profile ~/.bash_profile.old
fi

echo "adding my bash config"
cp ~/dotfiles/bash/.bash_profile ~/.bash_profile
