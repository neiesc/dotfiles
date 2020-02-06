#$ENV:CMDER_ROOT\config\profile.d\*.ps1
function my-work-dir { cd D:\Dev }
function my-ip { curl 'https://api.ipify.org?format=json' }
function my-choco-upgrade-all { choco upgrade all }
function my-choco-outdated { choco outdated }
function my-choco-list-local { choco list -l }
function my-perfmon-report { perfmon /report }
# curl wttr.in