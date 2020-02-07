$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyInstaller.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module $ChocolateyProfile
}

Install-ChocolateyVsixPackage -PackageName "MadsKristensen.JavaScriptSnippetPack"
Install-ChocolateyVsixPackage -PackageName "MadsKristensen.WebEssentials20153"
Install-ChocolateyVsixPackage -PackageName "MadsKristensen.OpenCommandLine"
Install-ChocolateyVsixPackage -PackageName "MadsKristensen.EditorEnhancements"
Install-ChocolateyVsixPackage -PackageName "MadsKristensen.EditorEnhancements"
Install-ChocolateyVsixPackage -PackageName "MadsKristensen.ImageOptimizer"
Install-ChocolateyVsixPackage -PackageName "MadsKristensen.ImageSprites"
Install-ChocolateyVsixPackage -PackageName "MadsKristensen.TrailingWhitespaceVisualizer"
Install-ChocolateyVsixPackage -PackageName "MadsKristensen.OpeninSublimeText"
Install-ChocolateyVsixPackage -PackageName "MadsKristensen.WebExtensionPack"
Install-ChocolateyVsixPackage -PackageName "MadsKristensen.WebAnalyzer"
Install-ChocolateyVsixPackage -PackageName "MadsKristensen.MarkdownEditor"
Install-ChocolateyVsixPackage -PackageName "SemihOkur.AsyncFixer"
Install-ChocolateyVsixPackage -PackageName "GiovanniBassi-MVP.CodeCrackerforC"
Install-ChocolateyVsixPackage -PackageName "VisualStudioProductTeam.ProductivityPowerTools2015"
Install-ChocolateyVsixPackage -PackageName "AdamRDriscoll.PowerShellToolsforVisualStudio2015"
Install-ChocolateyVsixPackage -PackageName "SteveCadwallader.CodeMaid"
Install-ChocolateyVsixPackage -PackageName "NUnitDevelopers.NUnit3TestAdapter"
Install-ChocolateyVsixPackage -PackageName "OmarElabd.ObjectExporter"
Install-ChocolateyVsixPackage -PackageName "vs-publisher-2795.ChutzpahTestAdapterfortheTestExplorer"
Install-ChocolateyVsixPackage -PackageName "SteffenForkmann.PaketforVisualStudio"
Install-ChocolateyVsixPackage -PackageName "MadsKristensen.FileNesting"

#https://marketplace.visualstudio.com/items?itemName=RionWilliams.Glyphfriend2017
#https://marketplace.visualstudio.com/items?itemName=MadsKristensen.DummyTextGenerator
#https://marketplace.visualstudio.com/items?itemName=WakaTime.WakaTime
#https://marketplace.visualstudio.com/items?itemName=MadsKristensen.ZenCoding