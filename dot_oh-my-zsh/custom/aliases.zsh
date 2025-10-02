# git & github
alias g="git"
alias gs="git status"
alias gc="git commit -m"

alias gk='gitk'
alias gg='git gui'

# vim
alias v='nvim'
alias vi='nvim'
alias vim='nvim'

alias ls='eza --icons'
alias l='ls -lh'
alias ll='ls -lah'
alias la='ls -la'
alias lm='ls -m'
alias lr='ls -R'
alias lg='ls -l --group-directories-first'

# zen
alias breath='zenta now --quick'
alias breathe='zenta now'
alias reflect='zenta reflect'

# tool with docker
alias aws='docker run --rm -ti -v ~/.aws:/root/.aws -v $PWD:/aws amazon/aws-cli'