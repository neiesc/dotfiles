#!/bin/sh

echo "### Installing nvim (LazyVim) ###"

#git clone https://github.com/LazyVim/starter ~/.config/nvim
#rm -rf ~/.config/nvim/.git

echo "### Installing HyDE ###"

#pacman -S --needed git base-devel
#git clone --depth 1 https://github.com/HyDE-Project/HyDE ~/HyDE

#cp pkg_user.lst ~/HyDE/Scripts
#cd ~/HyDE/Scripts
#./install.sh pkg_extra.lst pkg_user.lst

echo "### Installing Webapp ###"

webapp-install "WhatsApp" https://web.whatsapp.com https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/whatsapp.png
webapp-install "Google Photos" https://photos.google.com https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/google-photos.png
webapp-install "Google Contacts" https://contacts.google.com https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/google-contacts.png
webapp-install "Google Messages" https://messages.google.com/web/conversations https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/google-messages.png
webapp-install "Grok" https://grok.com https://grok.com/images/favicon-light.png
webapp-install "ChatGPT" https://chatgpt.com https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/chatgpt.png
webapp-install "YouTube" https://youtube.com https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/youtube.png
webapp-install "GitHub" https://github.com https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/github-light.png
webapp-install "X" https://x.com https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/x-light.png
webapp-install "Figma" https://figma.com https://www.veryicon.com/download/png/application/app-icon-7/figma-1?s=256
webapp-install "Discord" https://discord.com/channels/@me https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/discord.png
webapp-install "Zoom" https://app.zoom.us/wc/home https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/zoom.png