Import-Module -Name Terminal-Icons
oh-my-posh --init --shell pwsh --config ~/Dropbox/ohmyposhv3-2.json | Invoke-Expression
Import-Module -Name Posh-Git
Clear-Host
Write-Host "edinei.dev"

function work-dir {cd C:\Dev}
function work-dir-way2 {cd C:\Dev\Way2\pim}

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}