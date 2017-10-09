echo -e "\n Developer tools installation"


if [[ "$OSTYPE" == "linux-gnu" ]]; then
    echo -e "\n Linux detected"

    sudo apt-get update;

    sudo apt-get install tmux

    sudo apt-get install zsh



elif [[ "$OSTYPE" == "darwin"* ]]; then
    echo -e "\n OSX detected"

   if test ! $(which brew); then
        echo "Installing homebrew"
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
   fi

    brew install git

    brew install tmux

    brew install the_silver_searcher

    brew install zsh zsh-completions

    brew install wget


else
    echo -e "\n Not Linux or OSX. Not Installing"

fi



# Linux and/or OSX macOS installs

curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh




echo -e "\n Data Science installation"


if [[ "$OSTYPE" == "linux-gnu" ]]; then
    echo -e "\n Linux detected"



elif [[ "$OSTYPE" == "darwin"* ]]; then
    echo -e "\n OSX detected"



else
    echo -e "\n Not Linux or OSX. Not Installing"

fi






