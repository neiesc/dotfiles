$ErrorActionPreference = "Continue"

$UseHomePc = $env:USE_HOME_PC -eq "true"
if ($UseHomePc) {
  Write-Host "Using Home PC"
}
else {
  Write-Host "Using Work PC"
}

Write-Host "Install pre-requirements"
Invoke-Expression ".\pre_requirements.ps1"

Write-Host "Boxstarter install and options"
cinst boxstarter -y
. { Invoke-WebRequest -useb https://boxstarter.org/bootstrapper.ps1 } | Invoke-Expression; Get-Boxstarter -Force

$Boxstarter.RebookOk=$true # Allow reboots?
$Boxstarter.NoPassword=$false # Is this a machine with no login password?
$Boxstarter.AutoLogin=$true # Save my password securely and auto-login after a reboot

Write-Host "Basic setup"
Enable-RemoteDesktop
Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowProtectedOSFiles -EnableShowFileExtensions
Enable-MicrosoftUpdate
Disable-InternetExplorerESC # Turns off IE Enhansed Security Configuration that is on by default on Server OS versions
Disable-UAC
Set-TaskbarSmall

if (Test-PendingReboot) { Invoke-Reboot }

Write-Host "Power plan setup"
function SetPowerPlan([string]$PreferredPlan)
{
    Write-Host "Setting Powerplan to $PreferredPlan"
    $guid = (Get-WmiObject -Class win32_powerplan -Namespace root\cimv2\power -Filter "ElementName='$PreferredPlan'").InstanceID.tostring()
    $regex = [regex]"{(.*?)}$"
    $newpowerVal = $regex.Match($guid).groups[1].value

    # setting power setting to high performance
    powercfg -S  $newpowerVal
}
SetPowerPlan "High performance"
Write-BoxstarterMessage "Setting Standby Timeout to Never"
& powercfg.exe -change -standby-timeout-ac 0
& powercfg.exe -change -standby-timeout-dc 0
Write-BoxstarterMessage "Setting Monitor Timeout to Never"
& powercfg.exe -change -monitor-timeout-ac 0
& powercfg.exe -change -monitor-timeout-dc 0
Write-BoxstarterMessage "Setting Disk Timeout to Never"
& powercfg.exe -change -disk-timeout-ac 0
& powercfg.exe -change -disk-timeout-dc 0

if (Test-PendingReboot) { Invoke-Reboot }

#Write-Host "Update Windows and reboot if necessary"
#Install-WindowsUpdate -Full -AcceptEula
#if (Test-PendingReboot) { Invoke-Reboot }

Invoke-Expression ".\common_apps.ps1"
if ($UseHomePc) {
  Invoke-Expression ".\home_apps.ps1"
  Invoke-Expression ".\dev\dev_home_apps.ps1"
}
else {
  Invoke-Expression ".\work_apps.ps1"
  Invoke-Expression ".\dev\dev_work_apps.ps1"
}
Invoke-Expression ".\dev\dev_apps.ps1"
Invoke-Expression ".\dev\vscode_extensions.ps1"
Invoke-Expression ".\dev\devops_apps.ps1"
Invoke-Expression ".\design_apps.ps1"


cinst IIS-WebServerRole -source windowsfeatures
cinst IIS-HttpCompressionDynamic -source windowsfeatures
cinst TelnetClient -source windowsFeatures

# Item
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyInstaller.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module $ChocolateyProfile
}

Install-ChocolateyPinnedTaskBarItem -TargetFilePath "${env:ProgramFiles(x86)}\Google\Chrome\Application\chrome.exe"
Install-ChocolateyPinnedTaskBarItem -TargetFilePath "${env:ProgramFiles(x86)}\Microsoft Visual Studio\2019\Professional\Common7\IDE\devenv.exe"
Install-ChocolateyPinnedTaskBarItem -TargetFilePath "${env:ProgramFiles}\Microsoft VS Code\Code.exe"

Install-ChocolateyFileAssociation ".md" "${env:ProgramFiles(x86)}\MarkdownPad 2\MarkdownPad2.exe"