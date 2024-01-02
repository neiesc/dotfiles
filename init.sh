#!/usr/bin/env bash
DOTFILES_FOLDER=$HOME/Dev/dotfiles # if you need set this

# echo "Setting configs..."
# ln -sf $DOTFILES_FOLDER/linux/.config/fish/.env $HOME/.config/fish/.env
# ln -sf $DOTFILES_FOLDER/linux/.config/fish/config.fish $HOME/.config/fish/config.fish
# ln -sf $DOTFILES_FOLDER/linux/.config/fish/fish_plugins $HOME/.config/fish/fish_plugins

# ln -sf $DOTFILES_FOLDER/linux/.config/openbox/autostart $HOME/.config/openbox/autostart
# ln -sf $DOTFILES_FOLDER/linux/.config/openbox/menu-icons.xml $HOME/.config/openbox/menu-icons.xml
# ln -sf $DOTFILES_FOLDER/linux/.config/openbox/rc.xml $HOME/.config/openbox/rc.xml

# ln -sf $DOTFILES_FOLDER/linux/.config/openbox/scripts/ob-furminal $HOME/.config/openbox/scripts/ob-furminal

# ln -sf $DOTFILES_FOLDER/linux/.config/Thunar/uca.xml $HOME/.config/Thunar/uca.xml

# # ln -sf $DOTFILES_FOLDER/linux/.config/autostart $HOME/.config
# # ln -sf $DOTFILES_FOLDER/linux/.config/plank/dock1/launchers $HOME/.config/plank/dock1

echo "Setting themes..."

cd dependences/theme/archcraft-openbox-dracula
make