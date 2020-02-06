#$ENV:CMDER_ROOT\config\profile.d\*.ps1
function gvp-restore-local { gvp-root-git; cd scripts; .\configure_local_db.cmd restore s3; gvp-root-git; }
function gvp-root-git { cd C:\inetpub\wwwroot\gvp\ }
function gvp-root-files { cd C:\gvproot }
function gvp-tests { gvp-root-git; cd .\GVP.Tests\;  & 'C:\Program Files (x86)\NUnit 2.6.4\bin\nunit-console.exe' .\GVP.Tests.csproj; gvp-root-git; }
function gvp-prepare { .\gvpbuilder.cmd; .\gvp prepare }
function gvp-build { .\gvp build }
function gvp-build-debug { .\gvp build -debug }
function gvp-package { .\gvp package -all -env:local -nb }
function gvp-prepare-build-package { gvp-prepare; gvp-build; gvp-package }