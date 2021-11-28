#!/usr/bin/env bash

## Update System
#sudo pacman -Syyu

#sh ./common_apps.sh
#sh ./sysadmin_apps.sh
#sh ./dev_apps.sh
#sh ./creative_apps.sh
# sh ./game_apps.sh

## Python
# sudo -H pip3 install --upgrade pip
# sudo -H pip2 install --upgrade pip
# sudo pip3 install -r .requirements.txt

## link to $HOME
DOTFILES_FOLDER=$HOME/Dev/dotfiles
DROPBBOX_FOLDER=$HOME/Dropbox

ln -sf $DROPBBOX_FOLDER/dotfiles/.zsh_history $HOME/.zsh_history

ln -sf $DROPBBOX_FOLDER/dotfiles/.gitconfig $HOME/.gitconfig
ln -sf $DOTFILES_FOLDER/common/.gitignore_global $HOME/.gitignore_global

ln -sf $DOTFILES_FOLDER/common/.zshrc $HOME/.zshrc