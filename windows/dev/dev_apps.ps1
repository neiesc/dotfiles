# Dotnet
cinst visualstudio2019professional -y

if (Test-PendingReboot) { Invoke-Reboot }

cinst nuget.commandline -y
cinst dotnetcore-sdk -y

# Node.js (javascript)
cinst nodejs.install -y
cinst yarn -y

refreshenv

npm install -g npx
#npm install -g bower
npm install -g json-server
npm install -g http-server
npm install -g @angular/cli

# PHP
cinst bitnami-xampp -y
# Functional programming
cinst elixir -y

cinst greenshot -y

# https://chocolatey.org/packages/changelog
# https://chocolatey.org/packages/pullrequestreleasenotes

#cinst paket.powershell -y
#nuget install paket

# .NET decompiler
#cinst dotpeek -y
#cinst ilspy -y

#cinst testdriven.net -y
#cinst yeoman -y
cinst linqpad -y
#cinst asp-net-mvc-boilerplate -y

# https://www.codeproject.com/Tips/1042975/Tips-to-Improve-Visual-Studio-Build-Performance
# http://stackoverflow.com/questions/34395686/visual-studio-2015-is-extremely-slow?rq=1
# https://mspi.es/blog/5-Performance-Tweaks-for-Visual-Studio-2015-and-large-solutions
cinst vswhere -y

cinst notepadplusplus -y
cinst vscode -y
#cinst sublimetext3 -y
cinst markdownpad2 -y
#cinst heroku-cli -y
#https://www.editpadlite.com/ #for large files.

# Database
cinst dbeaver -y
# Azure Data Studio For SQL Server https://docs.microsoft.com/en-us/sql/azure-data-studio/download?view=sql-server-2017
# https://github.com/gandarez/ssms-wakatime # need in https://chocolatey.org/packages
# http://www.ssmsboost.com/
# http://www.sqldbx.com/
cinst robo3t -y
cinst sqlitebrowser -y

cinst git -y
#cinst git-lfs -y
#cinst sourcetree -y
#cinst poshgit -y

#cinst devbox-common -y

# Terminal
#https://github.com/ohmybash/oh-my-bash
cinst hyper -y
npm install -g hpm-cli

#cinst cmder -y
#cinst babun

cinst exercism-io-cli -y
#exercism configure --workspace="C:\Dev\Problem-solving\Exercism"

#cinst smtp4dev
cinst papercut -y

cinst putty.install -y
cinst cygwin -y

#cinst octopustools
#cinst workrave
#cinst prefix

#cinst chutzpah
#cinst glogg
#cinst curl
#cinst wget
#cinst zeal.install
#cinst ncrunch-vs2015
#cinst powershell-packagemanagement
#cinst bugshooting

#cinst fiddler -y
cinst postman -y
cinst soapui -y
#cinst insomnia-rest-api-client -y
cinst mockoon -y

#cinst plantuml
cinst docfx -y
cinst carnac -y

cinst adevelopers.utils -y # UAdevelopers.Utilities includes a number of utilities including console2, fiddler, launchy, lessmsi, filezilla, expresso, 7zip, lockhunter, notepad++, stexbar, and sysinternals.
cinst lessmsi -y
cinst lockhunter -y
#cinst stexbar -y

# Git
cinst gitextensions -y
cinst meld -y

# Git Setup
git config --global user.email "edinei.esc@gmail.com"
git config --global user.name "Edinei Cavalcanti"

git config --global core.autocrlf true
git config --global core.editor vim

git config --global color.branch auto
git config --global color.diff auto
git config --global color.interactive auto
git config --global color.status auto

#git config --global push.default matching
git config --global push.default current

git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

git config --global diff.algorithm patience
git config --global diff.tool meld

git config --global difftool.prompt false
git config --global difftool.meld.path "c:\Program Files (x86)\Meld\Meld.exe"
git config --global difftool.meld.cmd 'c:/Program\ Files\ \(x86\)/Meld/Meld.exe "$(cygpath -w "$LOCAL")" "$(cygpath -w "$REMOTE")"'

git config --global merge.tool meld

git config --global mergetool.prompt false
git config --global mergetool.keepBackup false
git config --global mergetool.keepTemporaries false

git config --global mergetool.meld.path "c:\Program Files (x86)\Meld\Meld.exe"