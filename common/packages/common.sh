#!/bin/sh

# zsh/Oh-my-zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Package Manager
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install jump

brew install git unzip gzip xz
curl -fsSL https://moonrepo.dev/install/proto.sh | bash
proto completions > ~/.config/fish/completions/proto.fish

# Audio & video
sudo pacman -S --noconfirm yt-dlp

# Fonts
# sudo apt install fonts-firacode -y

brew install thefuck
sudo pacman -S --noconfirm exa

sudo pacman -S --noconfirm rofimoji
