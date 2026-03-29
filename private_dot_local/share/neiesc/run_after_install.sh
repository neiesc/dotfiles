#!/bin/sh
set -eufo pipefail

echo "📦 Instalando pacotes comuns..."
curl -fsSL https://install.danklinux.com | sh
dms doctor
install_pkg package/pkg_common.lst

echo "🏠 Instalando pacotes pessoais..."
install_pkg.sh package/pkg_pessoal.lst
./package/install-webapp-pessoal.sh
flatpak install flathub ch.openboard.OpenBoard
flatpak install flathub com.obsproject.Studio

# echo "### Change shell ###"

# chsh -s /usr/bin/zsh

# echo "### Set helium default web browser ###"
#xdg-settings set default-web-browser helium.desktop

# echo "### Configure docker ###"

# systemctl --user enable --now docker
# sudo /sbin/sysctl -w net.ipv4.ip_unprivileged_port_start=0

# sudo /usr/bin/dockerd --add-runtime=nvidia=/usr/bin/nvidia-container-runtime
# docker run --gpus all nvidia/cuda:12.1.1-runtime-ubuntu22.04 nvidia-smi
# docker run --runtime=nvidia nvidia/cuda:9.0-base nvidia-smi

echo "✅ Instalação concluída!"
