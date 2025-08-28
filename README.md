# dotfiles

## Installation Arch linux
- Download the Arch Linux ISO, put it on a USB stick (use balenaEtcher on Mac/Windows), and boot off the stick (remember to turn off Secure Boot in the BIOS!).
- If you're on wifi, start by running `iwctl`, then type `station wlan0 scan`, then `station wlan0 connect <tab>`, pick your network, and enter the password. If you're on ethernet, you don't need this.

- `sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply $GITHUB_USERNAME`
