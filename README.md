# dotfiles

## Installation Arch linux
- [Download the Arch Linux ISO](https://archlinux.org/download) first then:
  - Put it on a USB stick (use [balenaEtcher](https://etcher.balena.io) on Mac/Windows.
  - [caligula](https://github.com/ifd3f/caligula) on Linux).
  - ```
    sudo fdisk -l
    lsblk
    sudo dd bs=4M if=path/to/archlinux.iso of=/dev/sdX status=progress oflag=sync
    ```
  - And finish with boot off the stick (remember to turn off Secure Boot in the BIOS!).
- If you're on wifi, start by running `iwctl`, then type `station wlan0 scan`, then `station wlan0 connect <tab>`, pick your network, and enter the password. If you're on ethernet, you don't need this.

- `sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply $GITHUB_USERNAME`
