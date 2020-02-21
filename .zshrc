# Zsh stuff

export ZSH=~/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# User Configuration

# Language
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# zle -N zle-line-init
# zle -N zle-keymap-select

# Editors - All Hail Emacs
export ALTERNATE_EDITOR=""
export EDITOR="emacsclient -t -c -a="      # $EDITOR opens in terminal
export VISUAL="emacsclient -c -a="         # $VISUAL opens in GUI mode

# Python
export WORKON_HOME="~/miniconda3/envs"

if [[ -f ~/miniconda3/etc/profile.d/conda.sh ]]
then
    source ~/miniconda3/etc/profile.d/conda.sh
fi

# Emacs tramp fix
if [[ "$TERM" == "dumb" ]]
then
  unsetopt zle
  PS1='$ '
fi

