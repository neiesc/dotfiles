#!/bin/sh

DOTFILES_FOLDER=$(pwd)

echo "❤🧡💛💚💙💜🤎🖤🤍 common ❤🧡💛💚💙💜🤎🖤🤍"
echo "❤🧡💛💚💙💜🤎🖤🤍 configuring wezterm ❤🧡💛💚💙💜🤎🖤🤍"
ln -sfb $DOTFILES_FOLDER/common/.wezterm.lua $HOME/.wezterm.lua

echo "❤🧡💛💚💙💜🤎🖤🤍 configuring nushell ❤🧡💛💚💙💜🤎🖤🤍"
ln -sfb $DOTFILES_FOLDER/common/.config/nushell $HOME/AppData/Roaming

#echo "❤🧡💛💚💙💜🤎🖤🤍 proto ❤🧡💛💚💙💜🤎🖤🤍"
#ln -sfb $DOTFILES_FOLDER/common/.proto/.prototools $HOME/.proto/.prototools

echo "❤🧡💛💚💙💜🤎🖤🤍 configuring git ❤🧡💛💚💙💜🤎🖤🤍"
ln -sf $DOTFILES_FOLDER/common/.gitconfig $HOME/.gitconfig
ln -sf $DOTFILES_FOLDER/common/.gitmessage $HOME/.gitmessage
