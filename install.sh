# Installing the development environment

echo "Installing the dev environment"
  source install_scripts/developer_tools_install.sh
  # source install_scripts//science_package_install.sh
  source install_scripts./install_dotfiles.sh

if [ 1 -eq 0 ]; then
	echo "No block comments in bash, so this is the classic solution to comment out by old code"
    for install_script in ./install/*; do
      source install_script
    done
fi

