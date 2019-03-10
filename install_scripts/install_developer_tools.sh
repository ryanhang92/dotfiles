echo "Developer tools installation"

lowercase(){
    echo "$1" | sed "y/ABCDEFGHIJKLMNOPQRSTUVWXYZ/abcdefghijklmnopqrstuvwxyz/"
}

OS=`lowercase \`uname\``

echo "${OS} was the OS detected"

if [ "${OS}" = "linux" ]; then
    echo "Applying linux package installations"
    sudo apt update
    sudo apt install curl
    sudo apt install vim
    sudo apt install neovim
    sudo apt install git
    sudo apt install tmux
    sudo apt install silversearcher-ag
    sudo apt install zsh
    sudo apt install emacs
    sudo apt install tig

    # Python requirements for neovim
    sudo apt-get install python-dev python-pip python3-dev python3-pip

elif [ "${OS}" = "darwin" ]; then
    echo "Applying macOS package installations"

   if test ! $(which brew); then
        echo "Homebrew not found, install Homebrew"
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
   fi

    # macOS comes preloaded with zsh
    brew install git
    brew install neovim
    brew install tmux
    brew install the_silver_searcher
    brew install zsh zsh-completions
    brew install emacs
    brew install tig

else
    echo "\n Not Linux or OSX. Correct Development OS not found exiting installation"
fi


# Linux and macOS shared installs

# Install VimPlug for neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install prezto
echo "\n Installing prezto (new install assumed)"
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

chsh -s /bin/zsh

