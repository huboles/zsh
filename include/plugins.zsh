# fish like autosuggestions
if [[ ! -d $ZSHEXTRA/zsh-autosuggestions ]]; then
    cd $ZSHEXTRA
    git clone 'https://github.com/zsh-users/zsh-autosuggestions' "$ZSHEXTRA/zsh-autosuggestions"
fi
source "$ZSHEXTRA/zsh-autosuggestions/zsh-autosuggestions.zsh"
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
set ZSH_AUTOSUGGEST_USE_ASYNC

# syntax highlighing
if [[ ! -d $ZSHEXTRA/zsh-fast-syntax-highlighting ]]; then
    cd $ZSHEXTRA
    git clone 'https://github.com/zdharma-continuum/fast-syntax-highlighting' "$ZSHEXTRA/zsh-fast-syntax-highlighting"
fi
source $ZSHEXTRA/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
fast-theme -q $ZSH/extra/zsh-fast-syntax-highlighting/themes/custom.ini

# up arrow history search of partial commands
if [[ ! -d $ZSHEXTRA/zsh-history-substring-search ]]; then
    cd $ZSHEXTRA
    git clone 'https://github.com/zsh-users/zsh-history-substring-search'
fi
source $ZSHEXTRA/zsh-history-substring-search/zsh-history-substring-search.zsh "$ZSHEXTRA/zsh-history-substring-search"
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
