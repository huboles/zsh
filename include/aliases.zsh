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

alias .-='cd -'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias h='history 0'
alias j='jobs -l'
alias c='clear'

alias cd='z'
alias zc='cd;clear'

alias dust='dust -rb'
alias xz='xz -v -T0 -9 -M64G'
alias make='make CFLAGS="-march=sandybridge -O2 -pipe" -j48 -l30'

alias ls='lsd'
alias l='ls'
alias ll='ls -lAh'
alias la='ls -Ah'
alias lt='ls --tree'

alias ip='ip --color=auto'
alias grep='grep --color=auto'

alias tattach='tmux attach-session -t'

alias d='docker'
alias dr='docker run -d --rm'
alias dc='docker compose up -d --remove-orphans'
alias ds='docker stop'
alias drm='docker rm'
alias drs='docker restart'
alias de='docker exec -it'
alias dlog='docker logs --timestamps --follow -n20'
# config aliases
alias wget='wget --hsts-file="$XDG_DATA_HOME/wget-hsts"'
