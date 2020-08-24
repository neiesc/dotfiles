sudo apt-get install keepass2 -y

# Audio & video
sudo snap install vlc

# Cloud
echo deb https://mega.nz/linux/MEGAsync/xUbuntu_20.04/ ./ | sudo tee /etc/apt/sources.list.d/megasync.list
wget https://mega.nz/linux/MEGAsync/xUbuntu_20.04/Release.key && sudo apt-key add Release.key
sudo apt-key adv --keyserver hkp://keys.gnupg.net --recv-keys 7F068E5D
sudo apt-get update
sudo apt-get install megasync -y
sudo apt-get install nautilus-megasync -y