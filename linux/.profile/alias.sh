# work
alias work-dir='cd ~/Dev'
alias work-iVera-dir='cd ~/Dev/iVera/iVera'
alias work-iVera-build='npm run gulp && npm run uglify && npm run start'

# obsoled
alias my-package-update='sudo apt-get -o Acquire::Check-Valid-Until=false update'
alias my-package-upgrade-all='sudo apt-get upgrade -y'
alias my-package-dist-upgrade-all='sudo apt-get dist-upgrade'
alias my-package-outdated='sudo apt-get -u upgrade --assume-no'
alias my-package-list-local='apt list --installed'

# network
alias my-ip='curl "https://api.ipify.org?format=json"'
alias my-ports-open='lsof -i -P -n'
