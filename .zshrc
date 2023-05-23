#shellcheck disable=all

# setup ~/.config/zsh
. $ZDOTDIR/.zshenv
[[ ! -d $ZSH ]] && mkdir -p $ZSH/cache $ZSHINCLUDE $ZSHCOMPLETION $ZSHEXTRA

# options
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HISTFILE=$ZSH/history/zsh-history
HISTORY_LOG=$ZSH/history/zsh-history.log
SAVEHIST=1000000
HISTSIZE=10000
HIST_STAMPS="yyyy-mm-dd"
REPORTTIME=5
DIRSTACKSISZE=10

setopt autopushd chase_links
setopt share_history append_history inc_append_history extended_history
setopt hist_expire_dups_first hist_ignore_dups hist_find_no_dups hist_ignore_all_dups hist_reduce_blanks
setopt correct correct_all
setopt list_ambiguous
setopt mark_dirs interactive_comments
setopt append_create clobber_empty
setopt hash_cmds hash_dirs
setopt path_script prompt_subst
setopt auto_param_keys auto_param_slash auto_remove_slash
setopt null_glob glob glob_dots glob_star_short bang_hist
unsetopt flow_control

# completion
fpath=($ZSHCOMPLETION $fpath)
[[ -f $ZSHCOMPLETION/completions.zsh ]] && source $ZSHCOMPLETION/completions.zsh

# source files from include dir
for file in $ZSHINCLUDE/*; do . ${file}; done

# start programs
[[ -f $XDG_CONFIG_HOME/.dircolors ]] && eval $(dircolors -b $XDG_CONFIG_HOME/.dircolors)
[[ $(which zoxide) ]] && eval "$(zoxide init zsh --cmd z)"

# zle plugins
autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
autoload -Uz run-help

add-zsh-hook chpwd chpwd_recent_dirs

chpwd() { ls -Ah }

# keybindings
bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line
bindkey "\e[5~" beginning-of-history
bindkey "\e[6~" end-of-history
bindkey "\e[3~" delete-char
bindkey "\e[2~" quoted-insert

# custom prompt
if [[ -n $SSH_CONNECTION ]]; then
PROMPT='%(?..%B%F{red}x)
%B%F{yellow}%n%b%f@%B%F{blue}%m%b%f: %F{cyan}%~ %F{red}[SSH] $F{magenta}[gentoo] %f$(git_prompt_enhanced_status)
%B%F{green}%(!.#.$) %f%b> '
RPROMPT='%f[%!]'
else
PROMPT='%(?..%B%F{red}x)
%B%F{green}%n%b%f@%B%F{red}%m%b%f: %F{blue}%~ %f$(git_prompt_enhanced_status)
%B%F{green}%(!.#.$) %f%b> '
RPROMPT='%f[%!]'
fi

PS2='%B%F{green}%(!.#.$)%f%b >  %F{cyan}*%f '
PS3='%B%F{green}%(!.#.$)%f%b %B%F{magenta}? '
