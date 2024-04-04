#!/bin/sh

DOTFILES_FOLDER=$(pwd)

echo "❤🧡💛💚💙💜🤎🖤🤍 Setting .config ❤🧡💛💚💙💜🤎🖤🤍"
echo "❤🧡💛💚💙💜🤎🖤🤍 .config/fish ❤🧡💛💚💙💜🤎🖤🤍"
cp $DOTFILES_FOLDER/common/.config/fish/.env.sample $HOME/.config/fish/.env
ln -sf $DOTFILES_FOLDER/common/.config/fish/completions/proto.fish $HOME/.config/fish/completions/proto.fish
ln -sf $DOTFILES_FOLDER/common/.config/fish/functions/fuck.fish $HOME/.config/fish/functions/fuck.fish
ln -sf $DOTFILES_FOLDER/common/.config/fish/alias.fish $HOME/.config/fish/alias.fish
ln -sf $DOTFILES_FOLDER/common/.config/fish/config.fish $HOME/.config/fish/config.fish
ln -sf $DOTFILES_FOLDER/common/.config/fish/fish_plugins $HOME/.config/fish/fish_plugins
ln -sf $DOTFILES_FOLDER/common/.config/fish/fish_variables $HOME/.config/fish/fish_variables

echo "❤🧡💛💚💙💜🤎🖤🤍 .config/neofetch ❤🧡💛💚💙💜🤎🖤🤍"
ln -sf $DOTFILES_FOLDER/common/.config/neofetch/config.conf $HOME/.config/neofetch/config.conf

echo "❤🧡💛💚💙💜🤎🖤🤍 .config/starship ❤🧡💛💚💙💜🤎🖤🤍"
ln -sf $DOTFILES_FOLDER/common/.config/starship.toml $HOME/.config/starship.toml
