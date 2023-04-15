# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PATH=$PATH:$HOME/.local/bin
export LANG=en_US.UTF-8
export LC_ALL="C"

# "random" for random theme and echo $RANDOM_THEME to know which one
ZSH_THEME="gianu"
alias hx='helix'
alias dots='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias hst="history 1 -1 | cut -c 8- | sort | uniq | fzf | tr -d '\n' | xclip -sel c"
alias dw='~/Downloads'
alias dc='~/Documents'
alias ru='~/Documents/RUST'
alias project='~/Documents/projects'

# git plugin
plugins=(git)
source $ZSH/oh-my-zsh.sh

# pomodoro
declare -A pomo_options
pomo_options["work"]="60"
pomo_options["break"]="10"

pomodoro () {
  if [ -n "$1" -a -n "${pomo_options["$1"]}" ]; then
    val=$1
    timer ${pomo_options["$val"]}m
    echo "Completed"
  fi
}

alias wo="pomodoro 'work'"
alias br="pomodoro 'break'"
