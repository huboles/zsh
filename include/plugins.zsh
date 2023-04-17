if [[ -d $ZSHEXTRA/zsh-autosuggestions ]]; then
    source $ZSHEXTRA/zsh-autosuggestions/zsh-autosuggestions.zsh
    ZSH_AUTOSUGGEST_STRATEGY=(history completion)
    set ZSH_AUTOSUGGEST_USE_ASYNC
fi

if [[ -d $ZSHEXTRA/zsh-fast-syntax-highlighting ]]; then
    source $ZSHEXTRA/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
    fast-theme -q $ZSHEXTRA/zsh-fast-syntax-highlighting/themes/custom.ini
fi

if [[ -d $ZSHEXTRA/zsh-history-substring-search ]]; then
    source $ZSHEXTRA/zsh-history-substring-search/zsh-history-substring-search.zsh
    bindkey '^[[A' history-substring-search-up
    bindkey '^[[B' history-substring-search-down
fi
