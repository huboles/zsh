#shellcheck disable=all

# sourcing  -------------------------------------------------
. $ZSH/.zshenv
ZSHEXTRA=$ZSH/extra
ZSHINCLUDE=$ZSH/include
[[ ! -d $ZSH ]] && mkdir $ZSH/{cache,extra,include}

# source files from include dir
for file in $ZSHINCLUDE/*; do
    . ${file}
done

# start programs 
eval $(dircolors -b $XDG_CONFIG_HOME/.dircolors)
eval "$(zoxide init zsh --cmd z)"
[[ -f /usr/share/fzf/key-bindings.zsh ]] && . /usr/share/fzf/key-bindings.zsh

# keybindings -------------------------------------------------------
bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line
bindkey "\e[5~" beginning-of-history
bindkey "\e[6~" end-of-history
bindkey "\e[3~" delete-char
bindkey "\e[2~" quoted-insert

# options ------------------------------------------------------------
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HISTFILE=$ZSH/.zsh-history
HISTORY_LOG=$ZSH/.zsh-history.log
SAVEHIST=100000
HISTSIZE=10000
HIST_STAMPS="mm/dd/yyyy"
REPORTTIME=5
DIRSTACKSISZE=10

setopt autopushd pushdminus pushdsilent pushdtohome pushdignoredups
setopt share_history append_history inc_append_history extended_history
setopt hist_expire_dups_first hist_ignore_dups hist_find_no_dups hist_save_no_dups hist_reduce_blanks
setopt correct correct_all
setopt list_ambiguous
setopt mark_dirs interactivecomments
setopt append_create clobber_empty
setopt hash_cmds hash_dirs
setopt path_script prompt_subst
setopt auto_param_keys auto_param_slash auto_remove_slash
setopt null_glob glob glob_dots glob_star_short
unsetopt flow_control

# completion ---------------------------------------------------------
zstyle ':completion:*' auto-description '%d'
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' completions 1
zstyle ':completion:*' expand prefix suffix
zstyle ':completion:*' file-sort access
zstyle ':completion:*' format '%d'
zstyle ':completion:*' glob 1
zstyle ':completion:*' group-name ''
zstyle ':completion:*' ignore-parents parent pwd
zstyle ':completion:*' insert-unambiguous true
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' 'r:|[._-,]=** r:|=**' 'l:|=* r:|=*'
zstyle ':completion:*' max-errors 3
zstyle ':completion:*' menu select=long interactive
zstyle ':completion:*' original true
zstyle ':completion:*' prompt '%e'
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' squeeze-slashes true
zstyle ':completion:*' substitute 1
zstyle ':completion:*' verbose true

autoload -Uz compinit
for dump in ~/.zcompdump(N.mh+24); do
    compinit
done
compinit -C
zshcache_time="$(date +%s%N)"

# zle plugins -------------------------------------------------------
autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
add-zsh-hook chpwd chpwd_recent_dirs

chpwd() { lsd -A }

autoload -U insert-files
zle -N insert-files 
bindkey -M vicmd '^f' insert-files

autoload -Uz run-help

# custom prompt -----------------------------------------------------
if [[ -n $SSH_CONNECTION ]]; then
PROMPT='%(?..%B%F{red}x) 
%B%F{yellow}%n%b%f@%B%F{blue}%M%b%f -> %F{green}%d %F{red}[SSH] %B%F{magenta}%t %W 
%B%F{green}%(!.#.$) %f%b> '
RPROMPT='$(git_prompt_enhanced_status) %f[%!]'
else
PROMPT='%(?..%B%F{red}x)
%B%F{green}%n%b%f@%B%F{red}%m%b%f: %F{blue}%~ %f$(git_prompt_enhanced_status)
%B%F{green}%(!.#.$) %f%b> '
RPROMPT='%f[%!]'
fi

PS2='%B%F{green}%(!.#.$)%f%b %F{cyan}*%f '
PS3='%B%F{green}%(!.#.$)%f%b %B%F{magenta}? '

