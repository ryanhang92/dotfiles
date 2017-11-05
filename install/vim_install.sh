if [ -d $HOME/.vimrc.old ]; then
    echo "removing old vimrc"
    rm ~/.vimrc.old
fi

if [ -d $HOME/.vimrc ]; then
    echo "removing vimrc"
    mv ~/.vimrc ~/.vimrc.old
fi

echo "adding ryan's vimrc"
cp ~/dotfiles/vim/.vimrc ~/.vimrc

echo "installing ycm plugin after updating vimrc with vundle configs"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
sudo apt-get install build-essential cmake
sudo apt-get install python-dev python3-dev
eval ~/.vim/bundle/YouCompleteMe/.install.py --clang-completer

