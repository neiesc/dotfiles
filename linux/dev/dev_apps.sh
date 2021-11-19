## Git
sudo apt install git -y
sudo apt install gitk -y

## Editor
sudo apt-get install neovim -y
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

sudo snap install code --classic

## Python
sudo apt-get install python-pip -y

## Node
curl -fsSL https://fnm.vercel.app/install | bash
source /home/neiesc/.zshrc

## Training
sudo snap install exercism
#exercism configure --token <my-token>
#exercism configure --workspace /home/neiesc/Dev/Problem-solving/Exercism
