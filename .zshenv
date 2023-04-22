# xdg variables
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.local/cache"

# shell variables
export SHELL="/bin/zsh"
export ZSH="$ZDOTDIR"
export ZSH_COMPDUMP="$ZSH/cache/.zcompdump-$HOST"

# my folders
export REPOS="$HOME/repos"
export DOTFILES="$REPOS/dotfiles"
export SCRIPTS="$REPOS/script"
export DOWNLOADS="$HOME/downloads"

# system variables
export LANG=en_US.UTF-8

# path variables
export PATH="$PATH:$HOME/.local/bin:$REPOS/script:."
export CDPATH=".:$HOME:$REPOS:$XDG_CONFIG_HOME:/"

# preferred programs
export PAGER='less'
export LESS='-R --use-color'
export MANPAGER='less -R --use-color'
export EDITOR="/usr/bin/nvim"
export EMAIL='huck@huck.website'

# config paths
export LESSHISTFILE="$XDG_STATE_HOME/less/history"
export TERMINFO="$XDG_DATA_HOME/terminfo"
export TERMINFO_DIRS="$XDG_DATA_HOME/terminfo:/usr/share/terminfo"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/pass"
export INPUTRC="$XDG_CONFIG_HOME/readline/inputrc"
