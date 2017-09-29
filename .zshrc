# Indicate install dir
export ZSH=/Users/bram/.oh-my-zsh
export PATH="/usr/local/sbin:$PATH"
export DOCKER_HUB_USERNAME="brammm"

# Theme https://github.com/robbyrussell/oh-my-zsh/wiki/themes
ZSH_THEME="honukai"

# Plugins https://github.com/robbyrussell/oh-my-zsh/wiki/Plugins
plugins=(git osx composer vagrant)

# Required
source $ZSH/oh-my-zsh.sh

# For zsh-completions
fpath=(/usr/local/share/zsh-completions $fpath)

# Z
. /usr/local/etc/profile.d/z.sh

# Aliases
alias doco="docker-compose" 
alias docu="doco up -d" 
alias docs="doco stop" 
alias doma="docker-machine" 
alias la="ls -la"
alias mysql.start="/usr/local/opt/mysql@5.6/bin/mysql.server start"
alias mysql.stop="/usr/local/opt/mysql@5.6/bin/mysql.server stop"
alias git_branch_clean='git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d'

# added by travis gem
[ -f /Users/bram/.travis/travis.sh ] && source /Users/bram/.travis/travis.sh
