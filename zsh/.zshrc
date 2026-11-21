

# Environment
export EDITOR=nvim
export VISUAL=nvim
export PAGER=less
export LESS=-R

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

export MOZ_ENABLE_WAYLAND=1
export ELECTRON_OZONE_PLATFORM_HINT=auto
export OZONE_PLATFORM=wayland

export PATH="$HOME/.local/bin:$PATH"

# History
HISTFILE="$XDG_STATE_HOME/zsh/history"
HISTSIZE=100000
SAVEHIST=100000

setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt AUTO_CD
setopt INTERACTIVE_COMMENTS

# Completion
fpath=(/usr/share/zsh/site-functions $fpath)

autoload -Uz compinit
compinit -d "$XDG_CACHE_HOME/zsh/zcompdump"

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Autosuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# FZF
source <(fzf --zsh)

# Zoxide
eval "$(zoxide init zsh)"

# Aliases
alias rm='rm -I'
alias t='tmux'
alias cd='z'
alias lg='lazygit'
alias ld='lazydocker'
alias fm='nautilus . &!'
alias ls='lsd -a'
alias ll='exa -lah'
alias lt='exa --tree'
alias cat='bat'
alias g='git'
alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push'
alias gpl='git pull'
alias gl='git log --oneline --graph --decorate'
alias gd='git diff'
alias gco='git checkout'
alias gb='git branch'
alias gsw='git switch'
alias pac='sudo pacman'
alias yi='yay -S'
alias yu='yay -Syu'
alias c='clear'
alias h='history'
alias mkdir='mkdir -pv'
alias df='df -h'
alias free='free -h'
alias d='docker'
alias v='nvim'

# bind
bindkey '^E' autosuggest-accept

# Yazi wrapper
function y() {
    local tmp cwd

    tmp="$(mktemp -t 'yazi-cwd.XXXXXX')" || return 1

    command yazi "$@" --cwd-file="$tmp"

    if [[ -s "$tmp" ]]; then
        IFS= read -r cwd < "$tmp"

        if [[ -n "$cwd" && "$cwd" != "$PWD" && -d "$cwd" ]]; then
            builtin cd -- "$cwd"
        fi
    fi

    command rm -f -- "$tmp"
}

# Syntax highlighting (load last)
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
eval "$(starship init zsh)"
