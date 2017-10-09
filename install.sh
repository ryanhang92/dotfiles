# Run all install scripts in the install folder with package install first

#for install_script in ./install/*; do
#    source install_script
#done

echo "setting up Ryan's environment"
source install/package_install.sh
source install/git_install.sh
source install/vim_install.sh
source install/tmux_install.sh
source install/bash_install.sh
source install/zsh_install.sh
