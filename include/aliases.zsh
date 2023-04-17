#ALIASES:

#shell aliases
alias cp='cp -vr'
alias rm='rm -v'
alias mv='mv -v'
alias mkdir='mkdir -pv'
alias mount='mount --mkdir'
alias lsblk='lsblk -f'
alias reload='source $ZSH/.zshrc'
alias quit='disown -a && exit'
alias msg='sudo dmesg -H --level=err'
alias :q='exit'

# convinience aliases
alias v='nvim'
alias sv='sudoedit'
alias vsesh='nvim -S'
alias vdiff='nvim -d'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias h='history 0'
alias j='jobs -l'
alias c='clear'
alias zc='z;clear'
alias cd='z'
alias make='make -j8 -l4 CFLAGS="-march=skylake -O2 -pipe -fomit-frame-pointer"'
alias dust='dust -rb'

# ls/exa aliases
alias ls='lsd'
alias l='ls'
alias ll='ls -lAh'
alias la='ls -Ah'
alias lt='ls --tree'

# color aliases
alias ip='ip --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# tmux aliases
alias tmux='tmux'
alias tlist='tmux list-sessions'
alias tsesh='tmux new-session -s'
alias tkill='tmux kill-session -t'
alias tattach='tmux attach-session -t'

# config aliases
alias wget='wget --hsts-file="$XDG_DATA_HOME/wget-hsts"'
