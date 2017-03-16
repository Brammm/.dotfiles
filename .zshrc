# Indicate install dir
export ZSH=/Users/bram/.oh-my-zsh

# Theme https://github.com/robbyrussell/oh-my-zsh/wiki/themes
ZSH_THEME="mh"

# Plugins https://github.com/robbyrussell/oh-my-zsh/wiki/Plugins
plugins=(git osx composer vagrant)

# Required
source $ZSH/oh-my-zsh.sh

# For zsh-completions
fpath=(/usr/local/share/zsh-completions $fpath)

# Z
. /usr/local/etc/profile.d/z.sh
