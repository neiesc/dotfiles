#!/usr/bin/env bash

DOTFILES_FOLDER=$HOME/Dev/Pessoal/dotfiles
DROPBBOX_FOLDER=$HOME/Insync/edinei3a@hotmail.com/Dropbox

cp $DOTFILES_FOLDER/dependences/archcraft-openbox/files/rc.xml $DOTFILES_FOLDER/linux/.config/openbox/rc.xml
cp $DOTFILES_FOLDER/dependences/archcraft-openbox/files/scripts/ob-furminal $DOTFILES_FOLDER/linux/.config/openbox/scripts/ob-furminal
cp $DOTFILES_FOLDER/dependences/themes/openbox/Dracula-withoutBorder $HOME/.themes