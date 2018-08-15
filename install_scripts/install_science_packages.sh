echo "Install Data Science Tools..."

lowercase() {
    echo "$1" | sed "y/ABCDEFGHIJKLMNOPQRSTUVWXYZ/abcdefghijklmnopqrstuvwxyz/"
}

OS=`lowercase \`uname\``

echo "${OS} was the OS detected"

if [ "${OS}" -eq "linux" ]; then
    echo "Applying linux package installations"
    sudo apt-get install python-pip # sudo apt-get install python3-pip
    python -m pip install --upgrade pip
    pip install -U scikit-learn
    pip install --user numpy scipy matplotlib ipython jupyter pandas sympy nose

elif [ "${OS}" -eq "darwin" ]; then
    echo "on macOS just install the conda data science project nothing is installed"
else
    echo "\n Not linux-gnu or macOS, you are probably on windows. Just install conda"
fi

