# dotfiles

ryan's dotfiles.

clone this to ~/ and then run the install.sh script!

Note: While setting up for linux dev environment
1. The "copying Zsh configuration files"  script defined in the Prezto readme and
    a terminal restart are required to get zsh working.
2. neovim setup fails because the init.vim needs to be changed with the instructions from :help nvim-from-vim, ensure that there is invalid vim linking code @ ~/.config/nvim/init.vim
3. Ubuntu login loop issues:
    I need to use a different desktop login manager than gdm3
    $ sudo apt install lighdm
    $ sudo dpkg-reconfigure lightdm
    # select the lighdm option
    # sudo reboot
