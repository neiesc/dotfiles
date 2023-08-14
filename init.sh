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

# ln -sf $DROPBBOX_FOLDER/dotfiles/.gitconfig $HOME/.gitconfig

ln -sf $DOTFILES_FOLDER/linux/.config/fish/.env $HOME/.config/fish/.env
ln -sf $DOTFILES_FOLDER/linux/.config/fish/config.fish $HOME/.config/fish/config.fish
ln -sf $DOTFILES_FOLDER/linux/.config/fish/fish_plugins $HOME/.config/fish/fish_plugins

ln -sf $DOTFILES_FOLDER/linux/.config/openbox/autostart $HOME/.config/openbox/autostart
ln -sf $DOTFILES_FOLDER/linux/.config/openbox/menu-icons.xml $HOME/.config/openbox/menu-icons.xml
ln -sf $DOTFILES_FOLDER/linux/.config/openbox/rc.xml $HOME/.config/openbox/rc.xml

ln -sf $DOTFILES_FOLDER/linux/.config/openbox/scripts/ob-furminal $HOME/.config/openbox/scripts/ob-furminal

ln -sf $DOTFILES_FOLDER/linux/.config/Thunar/uca.xml $HOME/.config/Thunar/uca.xml

# ln -sf $DOTFILES_FOLDER/linux/.config/autostart $HOME/.config
# ln -sf $DOTFILES_FOLDER/linux/.config/plank/dock1/launchers $HOME/.config/plank/dock1

echo "Setting themes..."
ln -sf $DOTFILES_FOLDER/dependences/themes/openbox/Dracula-withoutBorder $HOME/.themes
ln -sf $DOTFILES_FOLDER/dependences/themes/gitkraken/dracula-theme.jsonc $HOME/.gitkraken/themes

ln -sf $DOTFILES_FOLDER/linux/.config/openbox-themes/themes/dracula $HOME/.config/openbox-themes/themes

./dependences/themes/Tela-circle-icon-theme/install.sh dracula -d $HOME/.icons
