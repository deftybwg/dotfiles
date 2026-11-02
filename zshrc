# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="bira"
plugins=(git)

if [[ -f "$ZSH/oh-my-zsh.sh" ]]; then
    source "$ZSH/oh-my-zsh.sh"
fi

# Syntax highlighting
if [[ -f /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]]; then
    source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

    ZSH_HIGHLIGHT_STYLES[command]='fg=197'
    ZSH_HIGHLIGHT_STYLES[builtin]='fg=yellow'
    ZSH_HIGHLIGHT_STYLES[precommand]='fg=yellow'
fi

# Prompt
export PS1="%F{blue}%n@pop%f %F{blue}%~%f\$ "

# Go
export PATH="$PATH:/usr/local/go/bin:$HOME/go/bin"

# History
bindkey '^[[A' history-beginning-search-backward
bindkey '^[[B' history-beginning-search-forward

autoload -Uz compinit && compinit

setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS

# Custom tools
export PATH="$PATH:$HOME/Utils/hakrawler"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$HOME/Utils/john/run:$PATH"

alias john="$HOME/Utils/john/run/john"

# NVM
export NVM_DIR="$HOME/.nvm"

[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && source "$NVM_DIR/bash_completion"
