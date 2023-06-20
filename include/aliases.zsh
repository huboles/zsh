alias cp='cp -vr'
alias rm='rm -v'
alias mv='mv -v'
alias mkdir='mkdir -pv'
alias mount='mount --mkdir'
alias lsblk='lsblk -f'

alias reload='source $ZSH/.zshrc'
alias quit='disown -a && exit'
alias :q='exit'

alias v='nvim'
alias vsesh='nvim -S'
alias vdiff='nvim -d'

alias sv='sudoedit'
alias sudo="sudo "

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias h='history 0'
alias j='jobs -l'
alias c='clear'
alias zc='cd;clear'

alias cd='z '

alias make='make -j16 -l6 CFLAGS="-march=bdver1"'
alias dust='dust -rb'

alias ls='lsd'
alias l='ls'
alias ll='ls -lAh'
alias la='ls -Ah'
alias lt='ls --tree'

# color aliases
alias ip='ip --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color'

# tmux aliases
alias tattach='tmux attach-session -t'

# config aliases
alias wget='wget --hsts-file="$XDG_DATA_HOME/wget-hsts"'
alias xrdb='xrdb -load "XDG_CONFIG_HOME/X11/xresources"'
alias background='feh --bg-fill --no-fehbg --randomize /home/huck/media/photos/backgrounds'
alias nvidia-settings='nvidia-settings --config=$XDG_CONFIG_HOME/nvidia/settings'
