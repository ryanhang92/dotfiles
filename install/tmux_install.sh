if [ -d $HOME/.tmux.conf.old ]; then
    echo "removing old tmux conf"
    rm ~/.tmux.conf.old
fi

if [ -d $HOME/.tmux.conf ]; then
    echo "removing tmux conf"
    mv ~/.tmux.conf ~/.tmux.conf.old
fi

echo "adding tmux conf"
cp ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf
