#!/bin/sh
echo "Backing up existing dotfiles"
mv ~/.vim ~/.vim.orig
mv ~/.vimrc ~/.vimrc.orig
mv ~/.zshrc ~/.zshrc.orig
echo "Cloning Repo to ~/.dotfiles"
git clone https://github.com/sai-prasanna/dotfiles.git ~/.dotfiles
echo "Symlinking dotfiles, folders"
ln -s ~/.dotfiles/zshrc ~/.zshrc
ln -s ~/.dotfiles/.vim ~/.vim
ln -s ~/.dotfiles/vimrc ~/.vimrc
echo "Downloading vundle"
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
echo "Installing Plugins"
vim +PluginInstall +qall
