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


# Python
export WORKON_HOME="~/miniconda3/envs"

if [[ -f ~/miniconda3/etc/profile.d/conda.sh ]]
then
    source ~/miniconda3/etc/profile.d/conda.sh
fi
