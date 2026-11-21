# Sets ZDOTDIR so zsh finds .zshrc in ~/.config/zsh.
# This file must stay in $HOME: zsh reads it first, before ZDOTDIR is known.
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
