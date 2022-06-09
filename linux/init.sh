#!/usr/bin/env bash

export IS_HOME_PC=false #SET THIS

## Update System
#sudo pacman -Syyu

#sh ./common_apps.sh
#sh ./sysadmin_apps.sh
#sh ./dev_apps.sh
#sh ./creative_apps.sh
# sh ./game_apps.sh

## link to $HOME
DOTFILES_FOLDER=$HOME/Dev/dotfiles
DROPBBOX_FOLDER=$HOME/Dropbox

if $IS_HOME_PC
then
    ln -sf $DROPBBOX_FOLDER/dotfiles/.zsh_history_home $HOME/.zsh_history
else
    ln -sf $DROPBBOX_FOLDER/dotfiles/.zsh_history_work $HOME/.zsh_history
fi

# ln -sf $DROPBBOX_FOLDER/dotfiles/.gitconfig $HOME/.gitconfig
# ln -sf $DOTFILES_FOLDER/common/.gitignore_global $HOME/.gitignore_global

ln -sf $DOTFILES_FOLDER/common/.zshrc $HOME/.zshrc