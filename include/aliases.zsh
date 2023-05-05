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
alias ear='clear'
alias zc='cd; clear'
alias dust='dust -rb'
alias xz='xz -v -T0 -9 -M64G'
alias make='make CFLAGS="-march=sandybridge -O2 -pipe" -j48 -l30'

# ls aliases
alias ls='lsd'
alias l='ls'
alias la='l -Ah'
alias ll='la -l'
alias lt='l --tree'

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

# docker aliases
alias d='docker'
alias dr='docker run -d --rm'
alias dc='docker compose up -d --remove-orphans'
alias ds='docker stop'
alias drm='docker rm'
alias drs='docker restart'
alias de='docker exec -it'
alias dlog='docker logs --timestamps --follow -n20'
