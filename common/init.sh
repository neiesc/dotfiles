#!/bin/sh

DOTFILES_FOLDER=$(pwd)

echo "❤🧡💛💚💙💜🤎🖤🤍 .config ❤🧡💛💚💙💜🤎🖤🤍"
echo "❤🧡💛💚💙💜🤎🖤🤍 .config/fish ❤🧡💛💚💙💜🤎🖤🤍"
cp $DOTFILES_FOLDER/common/.config/fish/.env.sample $HOME/.config/fish/.env
ln -sf $DOTFILES_FOLDER/common/.config/fish/completions/proto.fish $HOME/.config/fish/completions/proto.fish
ln -sf $DOTFILES_FOLDER/common/.config/fish/functions/fuck.fish $HOME/.config/fish/functions/fuck.fish
ln -sf $DOTFILES_FOLDER/common/.config/fish/alias.fish $HOME/.config/fish/alias.fish
ln -sf $DOTFILES_FOLDER/common/.config/fish/config.fish $HOME/.config/fish/config.fish
ln -sf $DOTFILES_FOLDER/common/.config/fish/fish_plugins $HOME/.config/fish/fish_plugins
ln -sf $DOTFILES_FOLDER/common/.config/fish/fish_variables $HOME/.config/fish/fish_variables

echo "❤🧡💛💚💙💜🤎🖤🤍 .config/neofetch ❤🧡💛💚💙💜🤎🖤🤍"
mkdir $HOME/.config/neofetch
ln -sf $DOTFILES_FOLDER/common/.config/neofetch/config.conf $HOME/.config/neofetch/config.conf

echo "❤🧡💛💚💙💜🤎🖤🤍 .config/starship ❤🧡💛💚💙💜🤎🖤🤍"
ln -sf $DOTFILES_FOLDER/common/.config/starship_greeting.py $HOME/.config/starship_greeting.py
ln -sf $DOTFILES_FOLDER/common/.config/starship.toml $HOME/.config/starship.toml

echo "❤🧡💛💚💙💜🤎🖤🤍 proto ❤🧡💛💚💙💜🤎🖤🤍"
mkdir $HOME/.proto
ln -sf $DOTFILES_FOLDER/common/.proto/.prototools $HOME/.proto/.prototools

echo "❤🧡💛💚💙💜🤎🖤🤍 git ❤🧡💛💚💙💜🤎🖤🤍"
ln -sf $DOTFILES_FOLDER/common/.gitconfig $HOME/.gitconfig
ln -sf $DOTFILES_FOLDER/common/.gitmessage $HOME/.gitmessage

echo "❤🧡💛💚💙💜🤎🖤🤍 fish_history ❤🧡💛💚💙💜🤎🖤🤍"
ln -sf "/mnt/x/My Drive/dotfiles/fish_history" ~/.local/share/fish/fish_history
