echo -e "\n Data Science installation"

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    echo -e "\n Linux detected"

    sudo apt-get install python-pip

    # sudo apt-get install python3-pip

    python -m pip install --upgrade pip

    pip install -U scikit-learn

    pip install --user numpy scipy matplotlib ipython jupyter pandas sympy nose

    # export PATH="$PATH:/home/your_user/.local/bin"

    # can also try to install conda remote

elif [[ "$OSTYPE" == "darwin"* ]]; then
    echo -e "\n OSX detected, get conda for osx via bash, can do it with the GUI"

    cd ~

    # Find versions at https://repo.continuum.io/archive/

    curl -Ok https://repo.continuum.io/archive/Anaconda3-4.1.1-MacOSX-x86_64.sh

    bash Anaconda3-4.1.1-MacOSX-x86_64.sh -b -p ~/anaconda

    rm Anaconda3-4.1.1-MacOSX-x86_64.sh

    echo 'export PATH="~/anaconda/bin:$PATH"' >> ~/.bash_profile

    source .bash_profile

    conda update conda

else
    echo -e "\n Not Linux or OSX. Not Installing"

fi

