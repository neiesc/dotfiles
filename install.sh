echo ### Update system Arch Linux ###

sudo pacman -Syyu

echo ### Installing chyyezmoi (dotfiles manager) ###

sudo pacman -S chezmoi

echo ### Installing nvim (LazyVim) ###

git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git

echo ### Installing HyDE ###

pacman -S --needed git base-devel
git clone --depth 1 https://github.com/HyDE-Project/HyDE ~/HyDE
cd ~/HyDE/Scripts
cp pkg_extra.lst pkg_user.lst
./install.sh pkg_user.lst
