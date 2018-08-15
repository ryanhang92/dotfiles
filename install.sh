# Installing the development environment

echo "Installing the dev environment"
  . install_scripts/install_developer_tools.sh
  # . install_scripts/install_science_packages.sh
  . install_scripts/install_dotfiles.sh

if [ 1 -eq 0 ]; then
	echo "No block comments in bash, so this is the classic solution to comment out by old code"
    for install_script in ./install_scripts/*; do
      source install_script
    done
fi

