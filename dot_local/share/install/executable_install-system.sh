#!/bin/sh

echo "##### Install Oh My Zsh #####"
# git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

echo "### Installing nvim (LazyVim) ###"

#git clone https://github.com/LazyVim/starter ~/.config/nvim
#rm -rf ~/.config/nvim/.git

echo "### Installing proto ###"

#bash <(curl -fsSL https://moonrepo.dev/install/proto.sh)

echo "### Installing HyDE ###"

#pacman -S --needed git base-devel
#git clone --depth 1 https://github.com/HyDE-Project/HyDE ~/HyDE

#cp pkg_user.lst ~/HyDE/Scripts
#cd ~/HyDE/Scripts
#./install.sh pkg_extra.lst pkg_user.lst

echo "### Installing Flatpak ###"
# flatpak install flathub ch.openboard.OpenBoard

echo "### Set helium default web browser ###"
# xdg-settings set default-web-browser helium-browser.desktop

echo "### Installing Webapp ###"
# ./install-webapp.sh

echo "### Configure docker ###"

#sudo systemctl enable docker
#sudo systemctl daemon-reload
#sudo systemctl start docker
#sudo usermod -aG docker neiesc

# sudo /usr/bin/dockerd --add-runtime=nvidia=/usr/bin/nvidia-container-runtime
# docker run --gpus all nvidia/cuda:12.1.1-runtime-ubuntu22.04 nvidia-smi
# docker run --runtime=nvidia nvidia/cuda:9.0-base nvidia-smi

# systemd-mount
#sudo systemd-mount /dev/sdb1 /media/neiesc/Ultramassive