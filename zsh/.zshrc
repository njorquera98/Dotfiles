# ============================================================
# Environment
# ============================================================

export ZSH="$HOME/.oh-my-zsh"

# Homebrew (Apple Silicon)
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"

# Cargo / Rust
export PATH="$HOME/.cargo/bin:$PATH"


# ============================================================
# Volta / Node.js
# ============================================================

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"


# ============================================================
# Python
# ============================================================

export PATH="$HOME/Library/Python/3.9/bin:$PATH"

alias python=python3
alias pip='python3 -m pip'


# ============================================================
# Herd PHP
# ============================================================

export HERD_PHP_84_INI_SCAN_DIR="$HOME/Library/Application Support/Herd/config/php/84/"

export PATH="$HOME/Library/Application Support/Herd/bin/:$PATH"


# ============================================================
# Zellij
# ============================================================

if [[ -z "$ZELLIJ" ]]; then
    if [[ "$ZELLIJ_AUTO_ATTACH" == "true" ]]; then
        zellij attach -c
    else
        zellij-runner
    fi

    if [[ "$ZELLIJ_AUTO_EXIT" == "true" ]]; then
        exit
    fi
fi


# ============================================================
# Powerlevel10k Instant Prompt
# ============================================================

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# ============================================================
# Oh My Zsh
# ============================================================

plugins=(
    git
    autojump
    fzf-tab
)

ZSH_THEME="lambda"

source "$ZSH/oh-my-zsh.sh"


# ============================================================
# Powerlevel10k
# ============================================================

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source "$ZSH/custom/themes/powerlevel10k/powerlevel10k.zsh-theme"

typeset -g POWERLEVEL9K_INSTANT_PROMPT=off


# ============================================================
# Completions
# ============================================================

source <(ng completion script)


# ============================================================
# Aliases
# ============================================================

alias lzd='lazydocker'
