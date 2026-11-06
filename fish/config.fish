if status is-interactive
end
set -U fish_greeting ""
set -gx EDITOR nvim
set -gx VISUAL nvim
set -gx PAGER less
set -gx LESS -R

set -gx LANG en_US.UTF-8
set -gx LC_ALL en_US.UTF-8

set -gx XDG_CONFIG_HOME "$HOME/.config"
set -gx XDG_CACHE_HOME "$HOME/.cache"
set -gx XDG_DATA_HOME "$HOME/.local/share"
set -gx XDG_STATE_HOME "$HOME/.local/state"

set -gx MOZ_ENABLE_WAYLAND 1
set -gx ELECTRON_OZONE_PLATFORM_HINT auto
set -gx OZONE_PLATFORM wayland

zoxide init fish | source

abbr -a rm 'rm -I'
abbr -a t tmux
abbr -a cd z
abbr -a lg lazygit
abbr -a ld lazydocker
abbr -a fi 'nautilus . & disown'
abbr -a ls 'lsd -a'
abbr -a ll 'exa -lah'
abbr -a lt 'exa --tree'
abbr -a cat bat
abbr -a g git
abbr -a gs 'git status'
abbr -a ga 'git add'
abbr -a gc 'git commit -m'
abbr -a gp 'git push'
abbr -a gpl 'git pull'
abbr -a gl 'git log --oneline --graph --decorate'
abbr -a gd 'git diff'
abbr -a gco 'git checkout'
abbr -a gb 'git branch'
abbr -a gsw 'git switch'
abbr -a pac 'sudo pacman'
abbr -a yi 'yay -S'
abbr -a yu 'yay -Syu'
abbr -a c clear
abbr -a h history
abbr -a mkdir 'mkdir -pv'
abbr -a df 'df -h'
abbr -a free 'free -h'
abbr -a d docker
abbr -a v nvim

function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    command yazi $argv --cwd-file="$tmp"
    if read -z cwd <"$tmp"; and [ "$cwd" != "$PWD" ]; and test -d "$cwd"
        builtin cd -- "$cwd"
    end
    command rm -f -- "$tmp"
end

# Added by Antigravity CLI installer
set -gx PATH "/home/jk/.local/bin" $PATH
set -gx TINYFISH_API_KEY sk-tinyfish-WXYhD9uxGiRNvHys7yq3-50XdulscEF_

# Generated for envman. Do not edit.
test -s ~/.config/envman/load.fish; and source ~/.config/envman/load.fish
