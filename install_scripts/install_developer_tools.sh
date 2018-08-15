echo -e "\n Developer tools installation"

if [ "$OSTYPE" = "linux-gnu" ]; then
    echo -e "\n linux-gnu detected"
    sudo apt update
    sudo apt install curl
    sudo apt install vim
    sudo apt install git
    sudo apt install tmux
    sudo apt install silversearcher-ag
    sudo apt install zsh
    sudo apt install emacs

elif [ "$OSTYPE" = "darwin" ]; then
    echo -e "\n macOS detected"

   if test ! $(which brew); then
        echo "Homebrew not found, install Homebrew"
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
   fi

    brew install git
    brew install tmux
    brew install the_silver_searcher
    brew install zsh zsh-completions
    brew install emacs

else
    echo -e "\n Not Linux or OSX. Correct Development OS not found exiting installation"
fi


# Installations for Linux and macOS

# Installing oh my zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh


