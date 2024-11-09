#!/bin/sh
DOTFILES_FOLDER=$(pwd)

echo "❤🧡💛💚💙💜🤎🖤🤍 common ❤🧡💛💚💙💜🤎🖤🤍"
echo "❤🧡💛💚💙💜🤎🖤🤍 .config/nushell ❤🧡💛💚💙💜🤎🖤🤍"
ln -sfb $DOTFILES_FOLDER/common/.config/nushell $HOME/AppData/Roaming

echo "❤🧡💛💚💙💜🤎🖤🤍 proto ❤🧡💛💚💙💜🤎🖤🤍"
ln -sfb $DOTFILES_FOLDER/common/.proto/.prototools $HOME/.proto/.prototools

echo "❤🧡💛💚💙💜🤎🖤🤍 git ❤🧡💛💚💙💜🤎🖤🤍"
ln -sf $DOTFILES_FOLDER/common/.gitconfig $HOME/.gitconfig
ln -sf $DOTFILES_FOLDER/common/.gitmessage $HOME/.gitmessage
