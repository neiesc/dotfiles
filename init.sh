#!/usr/bin/env bash

export IS_HOME_PC=false #SET THIS

## Update System
#sudo pacman -Syyu

# sh ./common_apps.sh
# sh ./sysadmin_apps.sh
# sh ./dev_apps.sh
# sh ./creative_apps.sh
# sh ./game_apps.sh

## link to $HOME
DOTFILES_FOLDER=$HOME/Dev/Pessoal/dotfiles
DROPBBOX_FOLDER=$HOME/Insync/edinei3a@hotmail.com/Dropbox

# if $IS_HOME_PC
# then
#     ln -sf $DROPBBOX_FOLDER/dotfiles/.zsh_history_home $HOME/.zsh_history
# else
#     ln -sf $DROPBBOX_FOLDER/dotfiles/.zsh_history_work $HOME/.zsh_history
# fi

ln -sf $DROPBBOX_FOLDER/dotfiles/.gitconfig $HOME/.gitconfig

ln -sf $DOTFILES_FOLDER/linux/.config/fish/.env $HOME/.config/fish/.env
ln -sf $DOTFILES_FOLDER/linux/.config/fish/config.fish $HOME/.config/fish/config.fish
ln -sf $DOTFILES_FOLDER/linux/.config/fish/fish_plugins $HOME/.config/fish/fish_plugins

ln -sf $DOTFILES_FOLDER/linux/.config/openbox/rc.xml $HOME/.config/openbox/rc.xml
ln -sf $DOTFILES_FOLDER/linux/.config/openbox/autostart $HOME/.config/openbox/autostart