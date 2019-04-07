#!/bin/sh

if [ -x "$(command -v apt)" ]; then
    sudo apt install zsh tmux emacs26
fi
font_dir=~/.local/share/fonts
if [ ! -d $font_dir/Roboto_Mono  ]; then
    mkdir -p $font_dir
    wget https://fonts.google.com/download\?family\=Roboto%20Mono -O Roboto_Mono.zip
    unzip Roboto_Mono.zip -d $font_dir/Roboto_Mono
    rm Roboto_Mono.zip
    fc-cache -f -v $font_dir
fi

echo "Backing up existing dotfiles"
tar -zcvf dotfilesbackup.tar.gz  ~/.zshrc ~/.emacs.d ~/.tmux.conf ~/.spacemacs.d
rm -ri ~/.zshrc ~/.emacs.d ~/.tmux.conf ~/.spacemacs.d

echo "Cloning Repo to ~/.dotfiles"
git clone  https://github.com/sai-prasanna/dotfiles.git ~/.dotfiles
git clone -b develop https://github.com/syl20bnr/spacemacs ~/.emacs.d


echo "Symlinking dotfiles, folders"
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/.spacemacs.d ~/.spacemacs.d
