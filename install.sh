#!/bin/sh

if [ -x "$(command -v apt)" ]; then
    sudo apt install zsh tmux emacs26
fi

echo "Backing up existing dotfiles"
tar -zcvf dotfilesbackup.tar.gz  ~/.zshrc ~/.emacs.d ~/.tmux.conf ~/.spacemacs.d
rm -ri ~/.zshrc ~/.emacs.d ~/.tmux.conf ~/.spacemacs ~/.spacemacs.d
echo "Cloning Repo to ~/.dotfiles"
git clone  https://github.com/sai-prasanna/dotfiles.git ~/.dotfiles
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d


echo "Symlinking dotfiles, folders"
ln -s ~/.dotfiles/zshrc ~/.zshrc
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/spacemacs.d ~/.spacemacs.d
