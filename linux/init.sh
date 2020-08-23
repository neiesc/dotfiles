#!/usr/bin/env bash

## Update
sudo apt-get -o Acquire::Check-Valid-Until=false update # sudo apt update

sh ./common_apps.sh
sh ./sysadmin_apps.sh
sh ./dev/dev_apps.sh
sh ./creative_apps.sh

## Python
# sudo -H pip3 install --upgrade pip
# sudo -H pip2 install --upgrade pip
# sudo pip3 install -r .requirements.txt

## link to $HOME
export DOTFILES_FOLDER=$HOME/Dev/dotfiles
DROPBBOX_FOLDER=$HOME/Dropbox

if [ -d $DROPBBOX_FOLDER ]; then
  [ ! -L $HOME/.zsh_history ] && ln -s $DROPBBOX_FOLDER/history/zsh_history $HOME/.zsh_history
fi

ln -sf $DOTFILES_FOLDER/common/.gitconfig $HOME
ln -sf $DOTFILES_FOLDER/common/.gitignore_global $HOME
ln -sf $DOTFILES_FOLDER/common/.vimrc $HOME
ln -sf $DOTFILES_FOLDER/linux/.xinitrc $HOME
echo $DOTFILES_FOLDER/linux/.zshrc
echo $HOME
ln -sf $DOTFILES_FOLDER/linux/.zshrc $HOME

## Setup NeoBundle # TODO: Migrate to dein.vim
BUNDLE_DIR=$HOME/.vim/bundle

if [ ! -d $BUNDLE_DIR ]; then
  mkdir -p $BUNDLE_DIR
  git clone https://github.com/Shougo/neobundle.vim $BUNDLE_DIR/neobundle.vim
fi
