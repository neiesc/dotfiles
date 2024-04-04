#!/usr/bin/env bash
DOTFILES_FOLDER=$(pwd)

echo "❤🧡💛💚💙💜🤎🖤🤍 Setting .config ❤🧡💛💚💙💜🤎🖤🤍"
echo "❤🧡💛💚💙💜🤎🖤🤍 .config/fish ❤🧡💛💚💙💜🤎🖤🤍"
ln -sf $DOTFILES_FOLDER/linux/.config/fish/alias.fish $HOME/.config/fish/alias.fish
ln -sf $DOTFILES_FOLDER/linux/.config/fish/config.fish $HOME/.config/fish/config.fish
ln -sf $DOTFILES_FOLDER/linux/.config/fish/fish_plugins $HOME/.config/fish/fish_plugins
ln -sf $DOTFILES_FOLDER/linux/.config/fish/fish_variables $HOME/.config/fish/fish_variables
# ln -sf $DOTFILES_FOLDER/linux/.config/fish/.env $HOME/.config/fish/.env