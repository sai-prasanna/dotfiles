# Zsh stuff
export ZSH=~/.oh-my-zsh
ZSH_THEME="robbyrussell"
ENABLE_CORRECTION="true"
plugins=(git vi-mode)
source $ZSH/oh-my-zsh.sh

# User Configuration

# Language
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Terminal
export TERM=xterm-256color
bindkey -M viins 'jj' vi-cmd-mode # vi mode (already activated using oh my zsh plugin)

precmd() { RPROMPT="" }
function zle-line-init zle-keymap-select {
    VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
    RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
    zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select


# Editors - All Hail Emacs
export ALTERNATE_EDITOR=""
export EDITOR="emacsclient -t -c -a="      # $EDITOR opens in terminal
export VISUAL="emacsclient -c -a="         # $VISUAL opens in GUI mode
alias emacs="$EDITOR"

# Python
export PATH="~/miniconda3/bin":$PATH

