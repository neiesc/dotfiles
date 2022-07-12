# work
alias my-work-dir='cd ~/Dev'
alias my-work-dir-iVera='cd ~/Dev/iVera/iVera'

# obsoled 
alias my-package-update='sudo apt-get -o Acquire::Check-Valid-Until=false update'
alias my-package-upgrade-all='sudo apt-get upgrade -y'
alias my-package-dist-upgrade-all='sudo apt-get dist-upgrade'
alias my-package-outdated='sudo apt-get -u upgrade --assume-no'
alias my-package-list-local='apt list --installed'

# network
alias my-ip='curl "https://api.ipify.org?format=json"'
alias my-ports-open='lsof -i -P -n'
