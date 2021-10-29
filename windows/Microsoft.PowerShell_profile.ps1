Import-Module posh-git
Import-Module oh-my-posh
Set-PoshPrompt -Theme powerline
Clear-Host
Write-Host "edinei.dev"
function my-work-dir {cd C:\Dev}
# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
