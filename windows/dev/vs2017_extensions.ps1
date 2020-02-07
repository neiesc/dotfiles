$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyInstaller.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module $ChocolateyProfile
}

# Code style and debbug
#Install-ChocolateyVsixPackage -PackageName "JetBrains.ReSharper" # need buy
Install-ChocolateyVsixPackage -PackageName "SteveCadwallader.CodeMaid"
#Install-ChocolateyVsixPackage -PackageName "CodeValueLtd.OzCode" # need buy
Install-ChocolateyVsixPackage -PackageName "VisualStudioProductTeam.ProductivityPowerPack2017"
Install-ChocolateyVsixPackage -PackageName "GiovanniBassi-MVP.CodeCrackerforC"

Install-ChocolateyVsixPackage -PackageName "MadsKristensen.WebExtensionPack2017"

Install-ChocolateyVsixPackage -PackageName "ms-madsk.RazorLanguageServices"
#Install-ChocolateyVsixPackage -PackageName "MadsKristensen.EditorConfig" # native

Install-ChocolateyVsixPackage -PackageName "MadsKristensen.DummyTextGenerator"
Install-ChocolateyVsixPackage -PackageName "RionWilliams.Glyphfriend2017"
Install-ChocolateyVsixPackage -PackageName "MadsKristensen.PackageSecurityAlerts"
Install-ChocolateyVsixPackage -PackageName "MadsKristensen.JavaScriptSnippetPack"

Install-ChocolateyVsixPackage -PackageName "WakaTime.WakaTime"
#Install-ChocolateyVsixPackage -PackageName "JaredParMSFT.VsVim"