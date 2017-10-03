# Dotfiles

This is just my version of dotfiles, documenting what I need or like to work with.
 
## Installation

Depending on OS use either

```
$ ./install_osx.sh
```

or 

```
$ ./install_ubuntu.sh
```

Both install scripts aren't very well tested, so they might not work. Most important part is the symlinking.

Initiate the honukai oh-my-zsh theme git submodule:

```
$ git submodule update --init
```

Import `honukai-iterm-zsh/honukai.itermcolors` and update settings in iTerm (Profile > Colors).

## Credits

The [oh-my-zsh theme used](my-honukai.zsh-theme) is a modified version of the Honukai theme included here, 
with some Docker parts taken from [dpdornseifer/docker-zsh-theme](https://github.com/dpdornseifer/docker-zsh-theme).
