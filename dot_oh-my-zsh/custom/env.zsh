export DOCKER_HOST=unix://$XDG_RUNTIME_DIR/docker.sock

export PATH=$PATH:$HOME/.local/share/install/bin

export DOTNET_ROOT=$HOME/.dotnet
export PATH=$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools

export PATH=$PATH:$HOME/.local/share/JetBrains/Toolbox/scripts
export PATH=$HOME/.local/share/mise/shims:$PATH
export PATH=$PATH:$HOME/.cargo/bin