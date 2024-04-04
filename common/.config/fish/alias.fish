# git & github
alias g='git'
alias gcl='git clone --depth 1'
alias gi='git init'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push origin master'
alias gs='git status'
alias oco='bunx opencommit'

#alias gk='gitk'
#alias gg='git gui'

# Rewritten in Rust see: https://zaiste.net/posts/shell-commands-rust/
## ls
alias ls='exa --icons'
alias l='ls -lh'
alias ll='ls -lah'
alias la='ls -la'
alias lm='ls -m'
alias lr='ls -R'
alias lg='ls -l --group-directories-first'

## cat
alias cat="bat --style=auto"

# editor
## vim
alias vi='nvim'
alias vim='nvim'

## VS Code
alias c='code .'

# work
alias work-pessoal-dir='cd ~/Dev/Pessoal'

# package manager
alias my-package-sync='sudo apt-get update && sudo apt-get upgrade'
alias my-package-sync-cargo='proto upgrade'
alias my-package-sync-cargo='cargo install-update -a'
alias my-package-list-local='apt list --installed'
alias my-package-outdated='apt list --upgradable'
alias my-package-orphans-list='pacman -Qdt'

alias tealdeer='tldr'

# network
alias my-ip='curl https://ident.me/json'
alias my-ports-open='lsof -i -P -n'

# tool
alias aws='docker run --rm -ti -v ~/.aws:/root/.aws -v $PWD:/aws amazon/aws-cli'
alias mockoon='docker run --rm -ti --mount type=bind,source=/data-file.json,target=/data,readonly -p 3000:3000 mockoon/cli:latest -d data -p 3000'
