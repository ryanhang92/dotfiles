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
#

alias c=clear
alias s=source
alias rd="rm -rf"

alias vim="nvim"

export VISUAL=nvim
export EDITOR="$VISUAL"

# Abhinav was here
# d=$(test -f /tmp/wat.txt && cat /tmp/wat.txt || echo 0.1)
# (#sleep "$d" && echo "$d + 0.1") | bc > /tmp/wat.txt

# export PATH="/usr/local/opt/go@1.10/bin:$PATH"
# [ -r /Users/rhang/.profile_lda ] && . /Users/rhang/.profile_lda
