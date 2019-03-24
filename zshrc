# Zsh stuff
export ZSH=~/.oh-my-zsh
ZSH_THEME="robbyrussell"
ENABLE_CORRECTION="true"
plugins=(git)

# User configuration

source $ZSH/oh-my-zsh.sh
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export TERM=xterm-256color


# Editor Setup

export ALTERNATE_EDITOR=""
export EDITOR="emacsclient -t -c -a="                  # $EDITOR opens in terminal
export VISUAL="emacsclient -c -a="         # $VISUAL opens in GUI mode

# added by Miniconda3 4.5.12 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/home/sai/miniconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/home/sai/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/sai/miniconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/home/sai/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<

