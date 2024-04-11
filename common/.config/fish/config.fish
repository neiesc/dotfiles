source $HOME/.config/fish/alias.fish

# Configure Jump
status --is-interactive; and source (jump shell fish | psub)

set -U fish_greeting
# set -g theme_color_scheme dracula
# set -g theme_nerd_fonts yes

# other
fish_add_path -m $HOME/.local/bin
fish_add_path -m $HOME/.cargo/bin
fish_add_path -m /home/linuxbrew/.linuxbrew/bin

# proto
set -gx PROTO_HOME "$HOME/.proto"
set -gx PATH "$PROTO_HOME/shims:$PROTO_HOME/bin" $PATH

set -gx PATH "$HOME/.dotnet" $PATH
set -gx PATH "$PROTO_HOME/tools/node/20.11.1/bin" $PATH


# export (envsubst < $HOME/Dev/dotfiles/linux/.config/fish/.env)

# Fish syntax highlighting
set -g fish_color_autosuggestion '555'  'brblack'
set -g fish_color_cancel -r
set -g fish_color_command --bold
set -g fish_color_comment red
set -g fish_color_cwd green
set -g fish_color_cwd_root red
set -g fish_color_end brmagenta
set -g fish_color_error brred
set -g fish_color_escape 'bryellow'  '--bold'
set -g fish_color_history_current --bold
set -g fish_color_host normal
set -g fish_color_match --background=brblue
set -g fish_color_normal normal
set -g fish_color_operator bryellow
set -g fish_color_param cyan
set -g fish_color_quote yellow
set -g fish_color_redirection brblue
set -g fish_color_search_match 'bryellow'  '--background=brblack'
set -g fish_color_selection 'white'  '--bold'  '--background=brblack'
set -g fish_color_user brgreen
set -g fish_color_valid_path --underline

# Starship ☄🌌️
starship init fish | source
