# xdg variables
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.local/cache"

# shell variables
export SHELL="/bin/zsh"
export ZSH="$ZDOTDIR"
export ZSH_CUSTOM="$ZSH/custom"
export ZSH_COMPDUMP="$ZSH/cache/.zcompdump-$HOST"

# my folders
export REPOS="$HOME/repos"
export DOTFILES="$REPOS/dotfiles"
export SCRIPTS="$REPOS/script"
export DOWNLOADS="$HOME/downloads"
export PACKAGES="$HOME/.packages"
export CONFIG="$XDG_CONFIG_HOME"

# system variables
export LANG=en_US.UTF-8

# path variables
export PATH="$PATH:$HOME/.local/bin:$REPOS/script:$REPOS/ruby:$XDG_DATA_HOME/cargo/bin:."
export CDPATH=".:$HOME:$HOME/$REPOS:$HOME/$XDG_CONFIG_HOME:/"

# language variables
export GOPATH="$XDG_DATA_HOME/go"
export PERL_LOCAL_LIB_ROOT="$XDG_DATA_HOME/perl5"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"

# terminal setting:
[[ -n $TMUX ]] && export TERM=tmux-256color || export TERM=st-256color

# preferred programs
export PAGER='less'
export LESS='-R --use-color -Dd+r$Du+b'
export MANPAGER='less -R --use-color -Dd+r -Du+b'
export EDITOR="/usr/bin/nvim"
export DIFFPROG="/usr/bin/nvim -d"
export VISUAL="/usr/bin/nvim"
export BROWSER="/usr/bin/firefox"
export EMAIL='huck@huck.website'

# vim config
export MYVIMRC="$XDG_CONFIG_HOME/nvim/init.lua"

# config paths
export GTK_2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"
export LESSHISTFILE="$XDG_STATE_HOME/less/history"
export TERMINFO="$XDG_DATA_HOME/terminfo"
export TERMINFO_DIRS="$XDG_DATA_HOME/terminfo:/usr/share/terminfo"
export INPUTRC="$XDG_CONFIG_HOME/readline/inputrc"
export CUDA_CACHE_PATH="$XDG_CACHE_HOME/nv"

# zoxide
export _ZO_ECHO='1'
export _ZO_RESOLVE_SYMLINKS='1'

# 16 theme colors
export BACKGROUND='#151515'
export FOREGROUND='#d7d0c7'
export BLACK='#101010'
export GREY='#404040'
export RED='#e84f4f'
export BRRED='#d23d3d'
export GREEN='#b8d68c'
export BRGREEN='#a0cf5d'
export YELLOW='#e1aa5d'
export BRYELLOW='#f39d21'
export BLUE='#4D88FF'
export BRBLUE='#2B76D4'
export MAGENTA='#9b64fb'
export BRMAGENTA='#8542ff'
export CYAN='#00CCCC'
export BRCYAN='#21d6c7'
export WHITE='#909090'
export BRWHITE='#dddddd'
