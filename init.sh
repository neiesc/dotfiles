#!/usr/bin/env bash
DOTFILES_FOLDER=$HOME/Dev/Pessoal/dotfiles # if you need set this

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

mkdir -p $HOME/.local/share/xfce4/terminal/colorschemes
ln -sf $DOTFILES_FOLDER/dependences/themes/xfce4-terminal/Dracula.theme $HOME/.local/share/xfce4/terminal/colorschemes/Dracula.theme

ln -sf $DOTFILES_FOLDER/dependences/themes/gitk/gitk $HOME/.config/git/gitk

ln -sf $DOTFILES_FOLDER/dependences/themes/rofi/theme/config1.rasi $HOME/.config/rofi/config.rasi
