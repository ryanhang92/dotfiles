if [ -d $HOME/.zshrc ]; then
    echo "removing old zsh config"
    rm ~/.zshrc
fi

echo "adding my zsh config"
cp ~/dotfiles/zsh/.zshrc ~/.zshrc
