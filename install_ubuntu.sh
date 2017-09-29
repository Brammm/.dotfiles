#!/bin/bash

cd ~
sudo apt-get update && sudo apt-get -y install zsh
wget https://raw.githubusercontent.com/rupa/z/master/z.sh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
chsh -s `which zsh`

ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/.gitignore ~/.gitignore
ln -s ~/.dotfiles/.zshrc_ubuntu ~/.zshrc
ln -s ~/.dotfiles/honukai-iterm-zsh/honukai.zsh-theme ~/.oh-my-zsh/themes/honukai.zsh-theme
