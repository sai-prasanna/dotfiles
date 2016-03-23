All my Dotfiles
==================

##Installation

#### via curl

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/sai-prasanna/dotfiles/master/install.sh)"
```

#### via wget

```shell
sh -c "$(wget https://raw.githubusercontent.com/sai-prasanna/dotfiles/master/install.sh -O -)"
```


## Additional Dependencies
### Vim 

    yaourt -S ack ctags                  # ArchLinux
    sudo apt-get install ack-grep ctags  # Ubuntu
    brew install ack ctags               # OS X

## zsh

### Oh My Zsh 

#### via curl

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

#### via wget

```shell
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
```

## Installation for vim

1. Backup your old vim configuration files:

        mv ~/.vim ~/.vim.orig
        mv ~/.vimrc ~/.vimrc.orig

2. Clone and install this repo:

        git clone git://github.com/humiaozuzu/dot-vimrc.git ~/.vim
        ln -s ~/.vim/vimrc ~/.vimrc

3. Setup `Vundle`:

        git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

4. Install bundles. Launch vim(ignore the errors and they will disappear after installing needed plugins)and run:

        :BundleInstall


