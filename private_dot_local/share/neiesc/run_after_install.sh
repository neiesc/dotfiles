#!/bin/sh
set -eufo pipefail

export PATH=$PATH:/home/neiesc/.local/share/neiesc/bin

echo "📦 Instalando pacotes comuns..."
#sudo pacman -Sy
#sudo pacman -S --needed git base-devel
#git clone https://aur.archlinux.org/paru.git
#cd paru
#makepkg -si

#paru -S noctalia-shell

#install_pkg.sh /home/neiesc/.local/share/neiesc/package/pkg_common.lst
#./package/install-webapp-common.sh

echo "🏠 Instalando pacotes pessoais..."
#install_pkg.sh /home/neiesc/.local/share/neiesc/package/pkg_pessoal.lst
#./package/install-webapp-pessoal.sh
#flatpak install flathub ch.openboard.OpenBoard
#flatpak install flathub com.obsproject.Studio

# echo "### Change shell ###"

#chsh -s /usr/bin/zsh

# echo "### Set helium default web browser ###"
#xdg-settings set default-web-browser helium.desktop

# echo "### Configure docker ###"

# systemctl --user enable --now docker
# sudo /sbin/sysctl -w net.ipv4.ip_unprivileged_port_start=0

# sudo /usr/bin/dockerd --add-runtime=nvidia=/usr/bin/nvidia-container-runtime
# docker run --gpus all nvidia/cuda:12.1.1-runtime-ubuntu22.04 nvidia-smi
# docker run --runtime=nvidia nvidia/cuda:9.0-base nvidia-smi

echo "✅ Instalação concluída!"
