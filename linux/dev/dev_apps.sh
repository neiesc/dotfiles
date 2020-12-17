## Git
sudo apt install git -y
sudo apt install gitk -y

## Editor
sudo apt-get install neovim -y
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

sudo snap install code --classic

## Python
sudo apt-get install python-pip -y

## Node
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install nodejs -y
sudo apt install npm -y

### Yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update && sudo apt install yarn -y

## Training
sudo snap install exercism
#exercism configure --token <my-token>
#exercism configure --workspace /home/neiesc/Dev/Problem-solving/Exercism