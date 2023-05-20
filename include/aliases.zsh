#shell aliases
alias cp='cp -vr'
alias rm='rm -v'
alias mv='mv -v'
alias mkdir='mkdir -pv'
alias mount='mount --mkdir'
alias lsblk='lsblk -f'
alias reload='source $ZSH/.zshrc'
alias quit='disown -a && exit'
alias :q='exit'

# vim aliases
alias v='nvim'
alias vsesh='nvim -S'
alias vdiff='nvim -d'

# sudo aliases
alias sv='sudoedit'
alias sudo='sudo '

# convinience aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias h='history 0'
alias j='jobs -l'
alias c='clear'
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
