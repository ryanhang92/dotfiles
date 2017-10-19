if [ -d $HOME/.tmux.conf ]; then
    echo "removing tmux conf"
    rm ~/.tmux.conf
fi

echo "adding tmux conf"
cp ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf
