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

echo "### Installing Flarpak ###"
#flatpak install flathub ch.openboard.OpenBoard

echo "### Installing Webapp ###"

# Comunication
webapp-install "Gmail" https://mail.google.com https://ssl.gstatic.com/images/branding/product/1x/hh_gmail_512dp.png
webapp-install "Tuta Mail" https://app.tuta.com https://app.tuta.com/images/logo-favicon-192.png
webapp-install "WhatsApp" https://web.whatsapp.com https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/whatsapp.png
webapp-install "Telegram" https://web.telegram.org https://web.telegram.org/a/favicon.svg
webapp-install "Google Messages" https://messages.google.com/web/conversations https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/google-messages.png
webapp-install "Google Translate" https://translate.google.com.br https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/google-translate.png

# Video & Photo
webapp-install "Google Photos" https://photos.google.com https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/google-photos.png
webapp-install "Google Contacts" https://contacts.google.com https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/google-contacts.png

# AI
webapp-install "Google Gemini" https://gemini.google.com https://www.gstatic.com/lamda/images/gemini_sparkle_4g_512_lt_f94943af3be039176192d.png
webapp-install "Google NotebookLM" https://notebooklm.google.com https://notebooklm.google.com/_/static/branding/v5/dark_mode/favicon/favicon.svg
webapp-install "ChatGPT" https://chatgpt.com https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/chatgpt.png
webapp-install "Grok" https://grok.com https://grok.com/images/favicon-light.png
webapp-install "Perplexity" https://www.perplexity.ai https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/perplexity-book-dark.png

# Dev
webapp-install "GitHub" https://github.com https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/github-light.png
webapp-install "Figma" https://figma.com https://www.veryicon.com/download/png/application/app-icon-7/figma-1?s=256
webapp-install "ToDiagram" https://todiagram.com/editor https://todiagram.com/logo-48x48.png
webapp-install "Hacker News" https://news.ycombinator.com https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/hacker-news.png
webapp-install "Reddit" https://www.reddit.com https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/reddit.png

# Social network
webapp-install "YouTube" https://youtube.com https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/youtube.png
webapp-install "X" https://x.com https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/x-light.png
webapp-install "Bluesky" https://bsky.app https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/bluesky.png
webapp-install "Discord" https://discord.com/channels/@me https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/discord.png
webapp-install "Zoom" https://app.zoom.us/wc/home https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/zoom.png
webapp-install "Linkedin" https://www.linkedin.com https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/linkedin.png
webapp-install "Headspace" https://my.headspace.com https://my.headspace.com/images/icon-120x120.png
webapp-install "Duolingo" https://www.duolingo.com https://d35aaqx5ub95lt.cloudfront.net/images/duolingo-touch-icon2.png

webapp-install "rqbit BitTorrent" http://localhost:3030/web/ http://localhost:3030/web/assets/logo.svg

# Streaming
webapp-install "HBO Max" https://www.hbomax.com https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/hbo-light.png
webapp-install "Disney+" https://www.disneyplus.com https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/disney-plus.png
webapp-install "Jellyfin" http://localhost:8096 http://localhost:8096/web/f5bbb798cb2c65908633.png

echo "### Configure docker ###"

#sudo systemctl enable docker
#sudo systemctl daemon-reload
#sudo systemctl start docker
#sudo usermod -aG docker neiesc
