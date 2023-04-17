# terminfo
[[ $TERM = "tmux-256color" ]] && export TERM=screen-256color

# xdg variables
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.local/cache"

# shell variables
export SHELL="/bin/zsh"
export ZDOTDIR="$HOME/.config/zsh"
export ZSH="$XDG_CONFIG_HOME/zsh"
export ZSH_CUSTOM="$ZSH/custom"
export ZSH_COMPDUMP="$ZSH/cache/.zcompdump-$HOST"

# my folders
export REPOS="$HOME/repos"
export DOTFILES="$REPOS/dotfiles"
export SCRIPTS="$REPOS/script"
export DOWNLOADS="$HOME/downloads"
export PACKAGES="$HOME/.packages"

# system variables
export LANG=en_US.UTF-8

# path variables
export PATH="$PATH:$HOME/.local/bin:."
export PATH="$PATH:$REPOS/script:$REPOS/ruby:"
export CDPATH=".:$HOME:$HOME/$REPOS:$HOME/$XDG_CONFIG_HOME:/"

# language variables
export GOPATH="$XDG_DATA_HOME/go"
export PERL5LIB="$XDG_DATA_HOME/perl5::$PERL5LIB"
export PERL_LOCAL_LIB_ROOT="$XDG_DATA_HOME/perl5"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export PATH="$PATH:$XDG_DATA_HOME/cargo/bin"
export PATH="$PATH:$XDG_DATA_HOME/gem/ruby/3.0.0/bin"

# preferred programs
export PAGER='less'
export MANPAGER='less'
export EDITOR="nvim"
export DIFFPROG="nvim -d"
export VISUAL="nvim"
export BROWSER="firefox"
export EMAIL='huck@huck.website'

# vim config
export MYVIMRC="$XDG_CONFIG_HOME/nvim/init.lua"

# config paths
export LESSHISTFILE="$XDG_STATE_HOME/less/history"
export TERMINFO="$XDG_DATA_HOME/terminfo"
export INPUTRC="$XDG_CONFIG_HOME/readline/inputrc"

# zoxide
export _ZO_ECHO='1'
export _ZO_RESOLVE_SYMLINKS='1'
