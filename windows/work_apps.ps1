cinst rocketchat -y

# Dotnet
cinst visualstudio2019professional -y
cinst visualstudio2019-workload-manageddesktop -y

function Install-Extension-VisualStudio2019([string]$UrlVsix, [string]$FileName)
{
    $exfile="$env:TEMP/$FileName"
    Write-Host " Downloading $FileName for Visual Studio 2019..."
    Invoke-WebRequest $UrlVsix -OutFile $exfile
    Write-Host " Downloading Completed!" -ForegroundColor "Green"
    Write-Host " Installing $FileName for Visual Studio 2019..."
    &  "${env:ProgramFiles(x86)}\Microsoft Visual Studio\2019\Professional\Common7\IDE\VSIXInstaller.exe" /q $exfile |Out-Null
    Write-Host " $FileName for Visual Studio 2019 Installed with Success!" -ForegroundColor "Green"
}

#https://github.com/wixtoolset/VisualStudioExtension/releases
Install-Extension-VisualStudio2019 "https://github.com/wixtoolset/VisualStudioExtension/releases/download/v1.0.0.4/Votive2019.vsix" "Votive2019.vsix"

cinst google-drive-file-stream -y
cinst google-hangouts-chrome -y

cinst rdcman -y

cinst cyberduck -y #Amazon S3

#cinst activepresenter -y # Create Screencasts & Interactive eLearning Contents With Ease
#cinst pencil -y