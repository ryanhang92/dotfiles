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

# Aliases
alias c=clear
alias s=source
alias rd="rm -rf"
alias tmux="TERM=screen-256color-bce tmux"
alias vim="nvim"
alias python="python3"
alias pip="pip3"

# To add git information
# Add 'git' to the pmodule list (under zstyle ':prezto:load' pmodule \ in your ~/.zpreztorc
if [[ $TERM == xterm ]]; then
    TERM=xter-256color
fi
