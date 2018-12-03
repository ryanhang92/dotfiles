#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
alias c=clear
alias s=source
alias rd="rm -rf"
alias tmux="TERM=screen-256color-bce tmux"

# To add git information 
# Add 'git' to the pmodule list (under zstyle ':prezto:load' pmodule \ in your ~/.zpreztorc
