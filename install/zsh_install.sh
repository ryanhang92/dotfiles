if [ -d $HOME/.zshrc.old ]; then
    echo "removing old zsh config"
    rm ~/.zshrc.old
fi

if [ -d $HOME/.zshrc ]; then
    echo "removing zsh config"
    mv ~/.zshrc ~/.zshrc.old
fi

echo "adding my zsh config"
cp ~/dotfiles/zsh/.zshrc ~/.zshrc
