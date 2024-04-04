#!/bin/sh

DOTFILES_FOLDER=$(pwd)

echo "❤🧡💛💚💙💜🤎🖤🤍 Setting .config ❤🧡💛💚💙💜🤎🖤🤍"
echo "❤🧡💛💚💙💜🤎🖤🤍 .config/fish ❤🧡💛💚💙💜🤎🖤🤍"
ln -sf $DOTFILES_FOLDER/common/.config/fish/alias.fish $HOME/.config/fish/alias.fish
ln -sf $DOTFILES_FOLDER/common/.config/fish/config.fish $HOME/.config/fish/config.fish
ln -sf $DOTFILES_FOLDER/common/.config/fish/fish_plugins $HOME/.config/fish/fish_plugins
ln -sf $DOTFILES_FOLDER/common/.config/fish/fish_variables $HOME/.config/fish/fish_variables
cp $DOTFILES_FOLDER/common/.config/fish/.env.sample $HOME/.config/fish/.env

ln -sf $DOTFILES_FOLDER/common/.config/starship.toml $HOME/.config/starship.toml