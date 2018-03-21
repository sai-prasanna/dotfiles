#!/bin/sh
echo "Backing up existing dotfiles"
tar -zhcvf dotfilesbackup.tar.gz ~/.vim ~/.vimrc ~/.zshrc ~/.emacs.d ~/.tmux.conf
rm -ri  ~/.vim ~/.vimrc ~/.zshrc ~/.emacs.d ~/.tmux.conf
echo "Cloning Repo to ~/.dotfiles"
git clone  --recurse-submodules -j8 https://github.com/sai-prasanna/dotfiles.git ~/.dotfiles
echo "Symlinking dotfiles, folders"
ln -s ~/.dotfiles/zshrc ~/.zshrc
ln -s ~/.dotfiles/.vim ~/.vim
ln -s ~/.dotfiles/emacs.d ~/.emacs.d
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf
echo "Downloading vundle"
git clone https://github.com/gmarik/vundle.git ~/.dotfiles/.vim/bundle/vundle
echo "Installing Plugins"
vim +PluginInstall +qall
mkdir -p ~/.vim/{backup_files,swap_files,undo_files}
