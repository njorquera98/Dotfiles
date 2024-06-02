# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git autojump fzf-tab)
source $ZSH/oh-my-zsh.sh

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source <(ng completion script)
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

typeset -g POWERLEVEL9K_INSTANT_PROMPT=off

# Inicia Zellij con la sesión "Work" si no está en ejecución
if ! pgrep -f zellij > /dev/null; then
    zellij attach Work || zellij
fi

