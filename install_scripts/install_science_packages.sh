echo -e "Install Data Science Tools..."

if [ "$OSTYPE" = "linux-gnu" ]; then
    echo -e "\n Linux detected"

    sudo apt-get install python-pip # sudo apt-get install python3-pip
    python -m pip install --upgrade pip
    pip install -U scikit-learn
    pip install --user numpy scipy matplotlib ipython jupyter pandas sympy nose

elif [ "$OSTYPE" = "darwin"* ]; then
    echo -e "on macOS just install the conda data science project"
else
    echo -e "\n Not linux-gnu or macOS, you are probably on windows. Just install conda"
fi

