if status is-interactive
    set -U fish_greeting
    # set -g theme_color_scheme dracula
    # set -g theme_nerd_fonts yes

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

    # ls
    alias ls='exa --icons'
    alias l='ls -lh'
    alias ll='ls -lah'
    alias la='ls -la'
    alias lm='ls -m'
    alias lr='ls -R'
    alias lg='ls -l --group-directories-first'

    # cat
    alias cat="bat --style=auto"

    # editor
    ## VS Code
    alias c='code .'
    
    ## vim
    alias vi='lvim'
    alias vim='lvim'
    alias nvim='lvim'

    # work
    alias work-dir='cd ~/Dev'
    alias work-iVera-dir='cd ~/Dev/iVera/iVera/src'
    alias work-iVera-build='npm run gulp && npm run uglify && npm run start'

    # package manager
    alias my-package-update='sudo pacman -Syyu'
    alias my-package-update-yay='yay'
    alias my-package-update-cargo='cargo install-update -a'
    alias my-package-list-local='sudo pacman -Q'
    alias my-package-outdated='pacman -Qu'
    alias my-package-orphans-list='pacman -Qdt'

    alias tealdeer='tldr'

    # network
    alias my-ip='curl "https://api.ipify.org?format=json"'
    alias my-ports-open='lsof -i -P -n'

    #tools
    alias aws='docker run --rm -ti -v ~/.aws:/root/.aws -v $(pwd):/aws amazon/aws-cli'

    # other
    source /opt/asdf-vm/asdf.fish
    fish_add_path -m ~/.local/bin
    #/home/edinei/.cargo/bin

    thefuck --alias | source

    export (envsubst < $HOME/Dev/Pessoal/dotfiles/linux/.config/fish/.env)
end
