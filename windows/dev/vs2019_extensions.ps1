$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyInstaller.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module $ChocolateyProfile
}

# Code style and debbug
Install-ChocolateyVsixPackage -PackageName "Diagnostics.DiagnosticsConcurrencyVisualizer2019"