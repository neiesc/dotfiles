Import-Module -Name Terminal-Icons
oh-my-posh --init --shell pwsh --config ~/Dropbox/ohmyposhv3-2.json | Invoke-Expression
Import-Module -Name Posh-Git
Clear-Host
Write-Host "edinei.dev"

function Work-Dir {cd C:\Dev}
function Work-Dir-Way2-PIM {cd C:\Dev\Way2\pim}
function Work-Dir-Way2-PIM-Sln {C:\Dev\Way2\pim\Way2Pim.sln}
function Work-Dir-Way2-PIM-TS-Execute {C:\Dev\Way2\pim\Way2Pim.Tasks.Service\bin\Debug\Way2Pim.Tasks.Service.exe}
function Work-Dir-Way2-PIM-Migration-Execute {C:\Dev\Way2\pim\Way2Pim.Migrations\bin\Debug\Way2Pim.Migrations.exe}
function gi {git init}
function ga {git add}
function gc {git commit -m}
function gs {git status}


# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}