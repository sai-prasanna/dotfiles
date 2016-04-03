#!/bin/sh
echo "Backing up existing dotfiles"
tar -zhcvf dotfilesbackup.tar.gz ~/.vim ~/.vimrc ~/.zshrc ~/.emacs
rm  ~/.vim ~/.vimrc ~/.zshrc ~/.emacs
echo "Cloning Repo to ~/.dotfiles"
git clone https://github.com/sai-prasanna/dotfiles.git ~/.dotfiles
echo "Symlinking dotfiles, folders"
ln -s ~/.dotfiles/zshrc ~/.zshrc
ln -s ~/.dotfiles/.vim ~/.vim
ln -s ~/.dotfiles/vimrc ~/.vimrc
ln -s ~/.dotfiles/emacs ~/.emacs
echo "Downloading vundle"
git clone https://github.com/gmarik/vundle.git ~/.dotfiles/.vim/bundle/vundle
echo "Installing Plugins"
vim +PluginInstall +qall
mkdir -p ~/.vim/{backup_files,swap_files,undo_files}
