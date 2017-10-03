#!/bin/bash

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install git zsh zsh-completions iterm2 z

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/.gitignore ~/.gitignore
ln -s ~/.dotfiles/.zshrc_osx ~/.zshrc
ln -s ~/.dotfiles/my-honukai.zsh-theme ~/.oh-my-zsh/themes/honukai.zsh-theme
