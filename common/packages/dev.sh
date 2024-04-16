#!/bin/sh

# version-manager proto
## programming language
proto install bun
proto install node
proto install python
proto install rust

proto plugin add dotnet "github:Phault/proto-dotnet-plugin"
proto install dotnet

proto plugin add zig "source:https://raw.githubusercontent.com/stk0vrfl0w/proto-toml-plugins/main/plugins/zig.toml"
proto install zig

## manager=package
### python
proto plugin add uv "source:https://raw.githubusercontent.com/Phault/proto-toml-plugins/main/uv/plugin.toml"
proto install uv

## tool
proto plugin add terraform "source:https://raw.githubusercontent.com/theomessin/proto-toml-plugins/master/terraform.toml"
proto install terraform

proto plugin add hurl "source:https://raw.githubusercontent.com/Phault/proto-toml-plugins/main/hurl/plugin.toml"
proto install hurl

proto plugin add hyperfine "source:https://raw.githubusercontent.com/Phault/proto-toml-plugins/main/hyperfine/plugin.toml"
proto install hyperfine

proto plugin add traefik "source:https://raw.githubusercontent.com/Phault/proto-toml-plugins/main/traefik/plugin.toml"
proto install traefik

## security-tools 
proto plugin add mkcert "source:https://raw.githubusercontent.com/Phault/proto-toml-plugins/main/mkcert/plugin.toml"
proto install mkcert

proto plugin add trufflehog "source:https://raw.githubusercontent.com/Phault/proto-toml-plugins/main/trufflehog/plugin.toml"
proto install trufflehog

# Docker
# sudo pacman -S --noconfirm docker
# sudo pacman -S --noconfirm docker-buildx
# sudo pacman -S --noconfirm docker-compose
# yay -S --noconfirm docker-credential-secretservice

# Git/Github
# yay -S --noconfirm tk # need for gitk and git gui
npm install -g opencommit


npm i @abhagsain/ai-cli -g

## Training
#sudo snap install exercism
#exercism configure --token <my-token>
#exercism configure --workspace /home/neiesc/Dev/Problem-solving/Exercism
