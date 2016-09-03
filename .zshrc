export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

export ZSH=~/.oh-my-zsh
export ZSH_THEME="custom"
export ENABLE_CORRECTION="true"
export COMPLETION_WAITING_DOTS="true"

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

export DISPLAY=":0.0"

COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="false"
DISABLE_UPDATE_PROMPT=true

plugins=(git z)

source $ZSH/oh-my-zsh.sh

alias wip='git add -A && git commit -m "WIP"'
alias rebase='git checkout master && git pull --rebase && git checkout - && git rebase -i master'
branch () { git checkout master && git pull --rebase && git checkout -b $1 & }
