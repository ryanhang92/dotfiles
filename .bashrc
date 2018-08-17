export PS1="\[\e[00;34m\]darkStar@\[\e[00;32m\]rhang-mba:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Init zshell on load after installation via homebrew (due to bug of not autoloading on shell spawn)
export SHELL=$(which zsh)
exec $(which zsh) -l
