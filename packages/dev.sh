# Docker
sudo pacman -S --noconfirm docker
sudo pacman -S --noconfirm docker-buildx
sudo pacman -S --noconfirm docker-compose
yay -S --noconfirm docker-credential-secretservice

# Git/Github
yay -S --noconfirm tk # need for gitk and git gui
#yay gitextensions

## Editor
sudo pacman -S --noconfirm code

### Install  lvim
sudo pacman -S --noconfirm neovim
LV_BRANCH='release-1.3/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.sh)

## Python
sudo pacman -S --noconfirm python-pip
sudo python -m pip install --upgrade pip

## Node
yay -S --noconfirm asdf-vm

## Training
#sudo snap install exercism
#exercism configure --token <my-token>
#exercism configure --workspace /home/neiesc/Dev/Problem-solving/Exercism
