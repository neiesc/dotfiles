#!/bin/sh

if [ ! -d ~/.config/nvim ]; then
    echo "### Installing nvim (LazyVim) ###"
    git clone https://github.com/LazyVim/starter ~/.config/nvim
    rm -rf ~/.config/nvim/.git
fi

if [ ! -d ~/.local/share/proto ]; then
    echo "### Installing proto ###"
    bash <(curl -fsSL https://moonrepo.dev/install/proto.sh)
fi

echo "### HyDE ###"
if [ ! -d ~/.local/share/install/HyDE ]; then
    echo "### clonando HyDE ###"
    pacman -S --needed git base-devel
    git clone --depth 1 https://github.com/HyDE-Project/HyDE ~/.local/share/install/HyDE
fi

#cd ~/.local/share/install/HyDE/Scripts
#git pull origin master
#./install.sh ../../pkg/pkg_common.lst

# echo "### Change shell ###"

# chsh -s /usr/bin/zsh

# echo "### Installing Flatpak ###"
# flatpak install flathub ch.openboard.OpenBoard

# echo "### Set helium default web browser ###"
xdg-settings set default-web-browser helium.desktop

# echo "### Configure docker ###"

# systemctl --user enable --now docker
# sudo /sbin/sysctl -w net.ipv4.ip_unprivileged_port_start=0

# sudo /usr/bin/dockerd --add-runtime=nvidia=/usr/bin/nvidia-container-runtime
# docker run --gpus all nvidia/cuda:12.1.1-runtime-ubuntu22.04 nvidia-smi
# docker run --runtime=nvidia nvidia/cuda:9.0-base nvidia-smi
