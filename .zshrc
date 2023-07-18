# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PATH=$PATH:$HOME/.local/bin
export LANG=en_US.UTF-8
export LC_ALL="C"

# "random" for random theme and echo $RANDOM_THEME to know which one
ZSH_THEME="gianu"
# ZSH_THEME="alanpeabody"

# git plugin
plugins=(git)
source $ZSH/oh-my-zsh.sh
source ~/.zsh_aliases

