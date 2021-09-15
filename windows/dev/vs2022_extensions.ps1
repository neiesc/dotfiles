$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyInstaller.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module $ChocolateyProfile
}

# Code style and debug
#Install-ChocolateyVsixPackage -PackageName "Diagnostics.DiagnosticsConcurrencyVisualizer2019"
#Install-ChocolateyVsixPackage -PackageName "MattLaceyLtd.ConstVisualizer"
Install-ChocolateyVsixPackage -PackageName "JaredParMSFT.VsVim2022Preview"
Install-ChocolateyVsixPackage -PackageName "SemihOkur.AsyncFixer2022"


# Metrics
#Install-ChocolateyVsixPackage -PackageName "ognjen-babic.code-maintainibility" # https://docs.microsoft.com/en-us/archive/blogs/codeanalysis/maintainability-index-range-and-meaning