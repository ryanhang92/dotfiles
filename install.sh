# Run all install scripts in the install folder with package install first

#for install_script in ./install/*; do
#    source install_script
#done

echo "setting up Ryan's environment"

source install/developer_tools_install.sh
source install/science_package_install.sh

chmod u+x install/git_install.sh
chmod u+x install/vim_install.sh
chmod u+x install/tmux_install.sh
chmod u+x install/bash_install.sh
chmod u+x install/zsh_install.sh
chmod u+x install/emacs_install.sh

./install/git_install.sh
./install/vim_install.sh
./install/tmux_install.sh
./install/bash_install.sh
./install/zsh_install.sh
./install/emacs_install.sh
