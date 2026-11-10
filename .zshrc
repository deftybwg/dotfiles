# Oh My Zsh for both root & ur main user
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
export PS1="%F{blue}%n@$HOST%f %F{blue}%~%f\$ "

# Go
export PATH="$PATH:/usr/local/go/bin:$HOME/go/bin"

# History
bindkey '^[[A' history-beginning-search-backward
bindkey '^[[B' history-beginning-search-forward

autoload -Uz compinit && compinit

setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS

# Path to tools (shared between users) 
export PATH="/opt/Utils/hakrawler:$PATH"
export PATH="/opt/Utils/john/run:$PATH"
export PATH="/opt/Utils:$PATH"

alias john="/opt/Utils/john/run/john"

# User-local tools
export PATH="$PATH:$HOME/.local/bin"

# NVM
export NVM_DIR="$HOME/.nvm"

[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && source "$NVM_DIR/bash_completion"

