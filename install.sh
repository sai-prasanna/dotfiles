#!/bin/sh

if [ -x "$(command -v apt)" ]; then
    sudo apt install zsh tmux emacs
fi

echo "Backing up existing dotfiles"
tar -zcvf dotfilesbackup.tar.gz  ~/.zshrc ~/.emacs.d ~/.tmux.conf ~/.spacemacs
rm -ri ~/.zshrc ~/.emacs.d ~/.tmux.conf ~/.spacemacs
echo "Cloning Repo to ~/.dotfiles"
git clone  --recurse-submodules https://github.com/sai-prasanna/dotfiles.git ~/.dotfiles
echo "Symlinking dotfiles, folders"
ln -s ~/.dotfiles/zshrc ~/.zshrc
ln -s ~/.dotfiles/emacs.d ~/.emacs.d
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/spacemacs ~/.spacemacs
