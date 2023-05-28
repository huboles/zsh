LIST_PACKED=true
GLOB_COMPLETE=true

zstyle ':completion:*' completer _expand _extensions _complete _approximate
zstyle ':completion:*' completions true
zstyle ':completion:*' expand prefix suffix
zstyle ':completion:*' insert-unambiguous true
zstyle ':completion:*' max-errors 3

zstyle ':completion:*' file-sort time follow
zstyle ':completion:*' file-list all

zstyle ':completion:*' path-completion true
zstyle ':completion:*' glob true
zstyle ':completion:*' group-name ''
zstyle ':completion:*' ignore-parents parent pwd
zstyle ':completion:*' substitute true
zstyle ':completion:*' squeeze-slashes true

zstyle ':completion:*' menu select=long search
zstyle ':completion:*' original true
zstyle ':completion:*' verbose true
zstyle ':completion:*' prompt '%e'
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' 'r:|[._-,]=** r:|=**' 'l:|=* r:|=*'

zstyle ':completion:*' gain-privileges true

zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s

zstyle ':completion:*' auto-description '%d'
zstyle ':completion:*:*:*:*:descriptions' format '%F{green}-- %d --%f'
zstyle ':completion:*:corrections' format '%F{yellow}!- %d -!%f'
zstyle ':completion:*:warnings' format '%F{red}no matches%f'
zstyle ':completion:*:messages' format '%F{blue}== %d ==%f'

autoload -Uz compinit
for dump in ~/.zcompdump(N.mh+24); do
    compinit
done
compinit -C
zshcache_time="$(date +%s%N)"
