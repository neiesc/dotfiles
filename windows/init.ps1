if (-not (Test-Path env:USE_HOME_PC)) {
  Write-Error "USE_HOME_PC Not Found"
  return
}
Write-Host "Using Home PC: $env:USE_HOME_PC"

Invoke-WebRequest https://chocolatey.org/install.ps1 -UseBasicParsing | Invoke-Expression

cinst boxstarter -y

# Boxstarter options
$Boxstarter.RebookOk=$true # Allow reboots?
$Boxstarter.NoPassword=$false # Is this a machine with no login password?
$Boxstarter.AutoLogin=$true # Save my password securely and auto-login after a reboot

# Basic setup
Set-ExecutionPolicy -ExecutionPolicy Unrestricted
Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowProtectedOSFiles -EnableShowFileExtensions
Enable-MicrosoftUpdate
Disable-InternetExplorerESC # Turns off IE Enhansed Security Configuration that is on by default on Server OS versions
Disable-UAC
Set-TaskbarSmall

if (Test-PendingReboot) { Invoke-Reboot }

# Power plan setup
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

# Update Windows and reboot if necessary
Install-WindowsUpdate -Full -AcceptEula
if (Test-PendingReboot) { Invoke-Reboot }

#Apps
#if ($env:USE_HOME_PC -eq "true") {
#  cinst visualstudio2017enterprise -y # ¯\_(ツ)_/¯
#}
#else {
#  cinst visualstudio2017professional -y
#}

#cinst visualstudio2017-workload-netweb -y
#cinst visualstudio2017-workload-netcoretools -y

if (Test-PendingReboot) { Invoke-Reboot }

Invoke-Expression ".\common_apps.ps1"
Invoke-Expression ".\dev_apps.ps1"
Invoke-Expression ".\design_apps.ps1"

#Invoke-Expression ".\vs2017_extensions.ps1"
Invoke-Expression ".\visualstudiocode_extensions.ps1"

if ($env:USE_HOME_PC -eq "true") {
  Invoke-Expression ".\home_apps.ps1"
}
else {
  Invoke-Expression ".\work_apps.ps1"
}

cinst IIS-WebServerRole -source windowsfeatures
cinst IIS-HttpCompressionDynamic -source windowsfeatures
cinst TelnetClient -source windowsFeatures

# Item
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyInstaller.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module $ChocolateyProfile
}

Install-ChocolateyPinnedTaskBarItem "${env:ProgramFiles(x86)}\Google\Chrome\Application\chrome.exe"
Install-ChocolateyPinnedTaskBarItem "${env:ProgramFiles(x86)}\Microsoft Visual Studio 14.0\Common7\IDE\devenv.exe"
Install-ChocolateyPinnedTaskBarItem "C:\tools\cmder\Cmder.exe"

Install-ChocolateyFileAssociation ".md" "$env:programfiles\MarkdownPad 2\MarkdownPad2.exe"
