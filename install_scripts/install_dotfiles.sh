# Installing all of the dotfiles - swapping their configuration into the right place)
echo "Swapping in the dotfiles"

lowercase() {
    echo "$1" | sed "y/ABCDEFGHIJKLMNOPQRSTUVWXYZ/abcdefghijklmnopqrstuvwxyz/"
}

OS=`lowercase \`uname\``

echo "${OS} was the OS detected"

### Installing Bash Profile ###
if [ -d $HOME/.bash_profile.old ]; then
    echo "removing old bash config"
    rm ~/.bash_profile.old
fi

if [ -d $HOME/.bash_profile ]; then
    echo "removing bash config"
    mv ~/.bash_profile ~/.bash_profile.old
fi

echo "adding my bash config"
cp ~/dotfiles/.bash_profile ~/.bash_profile


### Installing Vim Configs ###
if [ -d $HOME/.vimrc.old ]; then
    echo "removing old vimrc"
    rm ~/.vimrc.old
fi

if [ -d $HOME/.vimrc ]; then
    echo "removing vimrc"
    mv ~/.vimrc ~/.vimrc.old
fi

echo "adding vimrc"
cp ~/dotfiles/.vimrc ~/.vimrc

if [ "${OS}" = "linux" ]; then
    echo -e "Installing ycm on linux, for other OSs use another IDE" 
    echo "Installing ycm plugin after updating vimrc with vundle configs"
    sudo rm -rf ~/.vim/bundle
    (cd ~/ && git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim)
    sudo apt-get install build-essential cmake
    sudo apt-get install python-dev python3-dev
    eval ~/.vim/bundle/YouCompleteMe/.install.py --clang-completer
fi


### Installing Tmux Configs ###
if [ -d $HOME/.tmux.conf.old ]; then
    echo "removing old tmux conf"
    rm ~/.tmux.conf.old
fi

if [ -d $HOME/.tmux.conf ]; then
    echo "removing tmux conf"
    mv ~/.tmux.conf ~/.tmux.conf.old
fi

echo "adding tmux conf"
cp ~/dotfiles/.tmux.conf ~/.tmux.conf


### Installing ZSH Configs ###
if [ -d $HOME/.zshrc.old ]; then
    echo "removing old zsh config"
    rm ~/.zshrc.old
fi

if [ -d $HOME/.zshrc ]; then
    echo "removing zsh config"
    mv ~/.zshrc ~/.zshrc.old
fi

echo "adding my zsh config"
cp ~/dotfiles/.zshrc ~/.zshrc


### Installing EMACS Configs ###
if [ -d $HOME/.emacs.old ]; then
    echo "removing .emacs.old file"
    rm ~/.emacs.old
fi

if [ -d $HOME/.emacs.d.old ]; then
    echo "removing .emacs.d.old folder"
    rm -rf ~/.emacs.d.old
fi

if [ -d $HOME/.emacs ]; then
    echo "removing .emacs file"
    mv ~/.emacs ~/.emacs.old
fi

if [ -d $HOME/.emacs.d ]; then
    echo "removing .emacs.d folder"
    mv ~/.emacs.d ~/.emacs.d.old
fi

echo "adding .emacs and .emacs.d"
cp ~/dotfiles/.emacs ~/.emacs
cp -r ~/dotfiles/.emacs.d ~/.emacs.d


### Installing GIT Configs ###
if [ 1 -eq 0 ]; then
	echo "No block comments in bash, so this is the classic solution to comment out by old code"

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

    echo "adding git config and git ignore"
    cp ~/dotfiles/.gitconfig ~/.gitconfig
    cp ~/dotfiles/.gitignore_global ~/.gitignore_global
fi

