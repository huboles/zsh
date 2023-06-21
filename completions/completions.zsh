LIST_PACKED=true
GLOB_COMPLETE=true

zstyle ':completion:*' completer _expand _extensions _complete _correct _approximate
zstyle ':completion:*' expand prefix suffix

zstyle ':completion:*:correct:::' max-errors 2 not-numeric
zstyle ':completion:*:approximate' max-errors 3 numeric

zstyle ':completion:*' completions true
zstyle ':completion:*' insert-unambiguous true
zstyle ':completion:*' show_ambiguity true
zstyle ':completion:*' list-grouped true

zstyle ':completion:*' file-sort time follow
zstyle ':completion:*' file-list all

zstyle ':completion:*' path-completion true
zstyle ':completion:*' list-dirs-first true
zstyle ':completion:*' glob true
zstyle ':completion:*' group-name ''
zstyle ':completion:*' ignore-parents parent pwd directory
zstyle ':completion:*' substitute true
zstyle ':completion:*' squeeze-slashes true

zstyle ':completion:*' menu select=long
zstyle ':completion:*' original true
zstyle ':completion:*' verbose true

zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' 'r:|[._-,]=** r:|=**' 'l:|=* r:|=*'

zstyle ':completion:*' gain-privileges true

zstyle ':completion:*' prompt 'corrections (%e)'
zstyle ':completion:*' select-prompt %S%l matches%s -- selection at %p
zstyle ':completion:*' list-prompt %S%l matches%s -- TAB for more (%p)

zstyle ':completion:*' auto-description '%d'
zstyle ':completion:*:descriptions' format '%F{green}-- %d --%f'
zstyle ':completion:*:corrections' format '%F{yellow}!- %d -!%f'
zstyle ':completion:*:warnings' format '%F{red}no matches%f'
zstyle ':completion:*:messages' format '%F{blue}== %d ==%f'

zstyle ':completion:*' use-compctl true

zstyle :compinstall filename '/home/huck/.config/zsh/completions/completions.zsh'

autoload -Uz compinit && compinit
