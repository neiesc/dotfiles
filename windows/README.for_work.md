Need backups of:

- C:\Users\neiesc\source\repos
- C:\Users\neiesc\\.ssh
- C:\Users\neiesc\Downloads
- C:\Users\neiesc\.bash_history
- C:\Users\neiesc\.my_nuget.cfg # For use in `psake setup`
- C:\Users\neiesc\.npmrc
- C:\Users\neiesc\.wakatime.cfg
- Backup de alguns coisas da pasta Dev (git) (As vezes não precisa)
- Backup tabs on chrome and firefox.

For install new Windows:

- For fix eth disconect update de drive (C:\Users\neiesc\Dropbox\Dispositivos\Jobs\AgileCotent\Acer Aspire V3-571-9423\Ethernet_win_b57_x64-17.2.0.2.rar)
- Restore backup from USB
- Create environment `USE_HOME_PC` as `false`
- Install git `choco install git -y`
- `git clone git@github.com:neiesc/dotfiles.git`
- Open CMD as ADM `mklink "C:\Users\neiesc\.bash_history" "C:\Users\neiesc\Dropbox\history\.bash_history_work"`
- Set ip eth (ipconfig_eth.png)
- Add Rocket.Chat link in `%appdata%\Microsoft\Windows\Start Menu\Programs\Startup` or `shell:startup`
- Configure API Key WakaTime.
- Permission for hyper.js and Visual Studio 2017 as administrator (shortcut > properties > Advanced... > Run as administrator).
- The install of dotnet3.5 was NOT successful.
- Copy `C:\Program Files (x86)\MSBuild\Microsoft\WiX\v3.x` to `C:\Program Files (x86)\Microsoft Visual Studio\2017\BuildTools\MSBuild\Microsoft\WiX\v3.x"`
- Create shortcut `C:\ProgramData\chocolatey\lib\sysinternals\tools` for `C:\tools`
- tela-inicial-windows.png
- Remove backup from USB
