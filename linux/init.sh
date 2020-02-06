#!/usr/bin/env bash
DOTFILES_FOLDER=$HOME/dotfiles
DB_FOLDER=$HOME/Dropbox

if [ -d $DB_FOLDER ]; then
  [ ! -L $HOME/.zsh_history ] && ln -s $DB_FOLDER/history/zsh_history $HOME/.zsh_history
fi

## link to $HOME
ln -s $DOTFILES_FOLDER/.gitconfig $HOME
ln -s $DOTFILES_FOLDER/.gitignore_global $HOME
ln -s $DOTFILES_FOLDER/.vimrc $HOME
ln -s $DOTFILES_FOLDER/.xinitrc $HOME
ln -s $DOTFILES_FOLDER/.zshrc $HOME

## Python
pip install -r .requirements.txt

## Setup NeoBundle
BUNDLE_DIR=$HOME/.vim/bundle

if [ ! -d $BUNDLE_DIR ]; then
  mkdir -p $BUNDLE_DIR
  git clone https://github.com/Shougo/neobundle.vim $BUNDLE_DIR/neobundle.vim
fi
