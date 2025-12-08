[ -z "$TMUX" ] && (tmux attach || tmux new-session)

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Created by newuser for 5.9
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt inc_append_history
setopt share_history
setopt HIST_IGNORE_DUPS

bindkey -e

bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word
bindkey "^[[3~" delete-char

setopt correct

source ~/zsh_plugins/fzf-tab/fzf-tab.zsh
source ~/zsh_plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme
source ~/zsh_plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
source ~/zsh_plugins/zsh-fzf-history-search/zsh-fzf-history-search.zsh
source ~/zsh_plugins/zsh-autosuggestions/zsh-autosuggestions.zsh


typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/nicholas/.zshrc'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
autoload -Uz compinit
compinit
# End of lines added by compinstall

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias \
    up="sudo pacman -Syu --noconfirm" \


function y() {
    local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
    yazi "$@" --cwd-file="$tmp"
    IFS= read -r -d '' cwd < "$tmp"
    [ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
    rm -f -- "$tmp"
}

export EDITOR=nvim
export PATH="$PATH:$HOME/scripts/"

export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/ssh-agent.socket

