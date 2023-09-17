# xdg variables
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.local/cache"

# shell variables
export SHELL="/bin/zsh"
export ZSH="$ZDOTDIR"
export ZSHEXTRA="$ZDOTDIR/extra"
export ZSHINCLUDE="$ZDOTDIR/include"
export ZSHCOMPLETION="$ZSH/completions"
export ZSHHISTORY="$ZSH/history"
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
export PATH="$PATH:$HOME/.local/bin:$REPOS/script:$REPOS/ruby:."
export CDPATH=".:$HOME:$HOME/$REPOS:$HOME/$XDG_CONFIG_HOME:/"

# language variables
export GOPATH="$XDG_DATA_HOME/go"
export PERL_LOCAL_LIB_ROOT="$XDG_DATA_HOME/perl5"
export PATH="$XDG_DATA_HOME/gem/ruby/3.0.0/bin:$PATH"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export PATH="$XDG_DATA_HOME/cargo/bin:$PATH"
export PATH="$PATH:$XDG_DATA_HOME/julia/bin/"

# compiler variables
export LLVM_PREFIX="/usr/lib/llvm/16/bin"
export CC="$LLVM_PREFIX/clang"
export CXX="$LLVM_PREFIX/clang++"
export AR="$LLVM_PREFIX/llvm-ar"
export NM="$LLVM_PREFIX/llvm-nm"
export RANLIB="$LLVM_PREFIX/llvm-ranlib"

# preferred programs
export PAGER='/usr/bin/less'
export LESS='-R --use-color -Dd+r$Du+b'
export MANPAGER='/usr/bin/less -R --use-color -Dd+r -Du+b'
export EDITOR="/usr/bin/nvim"
export DIFFPROG="/usr/bin/nvim -d"
export VISUAL="/usr/bin/nvim"
export BROWSER="/usr/bin/firefox"
export EMAIL='huck@huck.website'

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
