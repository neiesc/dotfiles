if status is-interactive
    set -g theme_color_scheme dracula
    set -g theme_nerd_fonts yes

    # git
    alias g='git'
    alias gcl='git clone --depth 1'
    alias gi='git init'
    alias ga='git add'
    alias gc='git commit -m'
    alias gp='git push origin master'
    alias gs='git status'

    alias gk='gitk'
    alias gg='git gui'

    # other
    source /opt/asdf-vm/asdf.fish
    fish_add_path -m ~/.local/bin

    export (envsubst < $HOME/.config/fish/.env)
end
