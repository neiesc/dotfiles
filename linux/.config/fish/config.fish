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

    # editor
    alias c='code'

    # work
    alias work-dir='cd ~/Dev'
    alias work-iVera-dir='cd ~/Dev/iVera/iVera/src'
    alias work-iVera-build='npm run gulp && npm run uglify && npm run start'

    # package manager
    alias my-package-update='sudo pacman -Syyu'
    alias my-package-list-local='sudo pacman -Q'
    alias my-package-outdated='pacman -Qu'
    alias my-package-orphans-list='pacman -Qdt'

    # network
    alias my-ip='curl "https://api.ipify.org?format=json"'
    alias my-ports-open='lsof -i -P -n'

    # other
    source /opt/asdf-vm/asdf.fish
    fish_add_path -m ~/.local/bin

    thefuck --alias | source

    export (envsubst < $HOME/.config/fish/.env)
end
