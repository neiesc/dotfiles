Need backups of:

- C:\Users\neiesc\source\repos
- C:\Users\neiesc\\.ssh
- C:\Users\neiesc\Downloads
- C:\Users\neiesc\\.my_nuget.cfg # For use in `psake setup`
- C:\Users\neiesc\\.npmrc
- C:\Users\neiesc\\.wakatime.cfg
- Backup de alguns coisas da pasta Dev (git) (As vezes não precisa)
- Backup tabs on chrome and firefox.

For install new Windows:

- For fix eth disconect update de drive (C:\Users\neiesc\Dropbox\Dispositivos\Jobs\AgileCotent\Acer Aspire V3-571-9423\Ethernet_win_b57_x64-17.2.0.2.rar)
- Restore backup from USB
- Select the Start button, and then select Settings  > Personalization > Themes.
  Under Themes > Related Settings, select Desktop icon settings.
  https://support.microsoft.com/en-us/windows/show-desktop-icons-in-windows-10-c13270f0-3812-c71d-f27e-29aa32588b20
- Create environment `USE_HOME_PC` as `false`
- Install git `choco install git -y`
- `git clone git@github.com:neiesc/dotfiles.git`
- Open CMD as ADM `mklink "C:\Users\neiesc\.bash_history" "C:\Users\neiesc\Dropbox\history\.bash_history_work"`
- Set ip eth (ipconfig_eth.png)
- Copy `C:\Program Files (x86)\MSBuild\Microsoft\WiX\v3.x` to `C:\Program Files (x86)\Microsoft Visual Studio\2017\BuildTools\MSBuild\Microsoft\WiX\v3.x"`
- Create shortcut `C:\ProgramData\chocolatey\lib\sysinternals\tools` for `C:\tools`
- tela-inicial-windows.png
- Remove backup from USB
- Visual Studio as Adm https://www.andrecarlucci.com/dev/abrindo-o-visual-studio-sempre-como-administrador-no-windows-8/
- Para resolver o problema e abrir sempre o Visual Studio com permissões de administrador, siga os passos:
  1. Localize o executável do Visual Studio (devenv.exe), o meu fica em “C:\Program Files (x86)\Microsoft Visual Studio 11.0\Common7\IDE”
  2. Clique com o botão direito no mesmo e selecione “Troubleshoot compatibility”
  3. Selecione “Troubleshoot program”
  4. Selecine “The program requires additional permissions”
  5. Clique em “Next” e depois “Test the program…”
  6. Espere o Visual Studio abrir
  7. Clique em “Next”
  8. Selecione “Yes, save these settings for this program”
  9. Clique em “Close”
