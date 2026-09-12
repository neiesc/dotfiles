# neiesc's dotfiles

## Information

- Distribution: [NixOS : the Linux distribution](https://nixos.org/)
- WM: [niri](https://niri-wm.github.io/niri/)
- Desktop Shell: [Noctalia](https://noctalia.dev/)
- Terminal: [foot](https://codeberg.org/dnkl/foot)
- Shell: [Fish](https://fishshell.com/)

<img width="800" height="600" alt="Image" src="Pictures/Screenshot from 2026-09-12 15-45-37.png" />

## Installation for NixOS : the Linux distribution
- First [Minimal ISO image](https://nixos.org/download/#nixos-iso) then:
  - Put it on a USB stick (use [balenaEtcher](https://etcher.balena.io) on Mac/Windows.
  - [caligula](https://github.com/ifd3f/caligula) on Linux).
  - Or native linux commands:
    1. `sudo fdisk -l` or `lsblk`
    2. `sudo dd bs=4M if=latest-nixos-minimal-x86_64-linux.iso of=/dev/sdX status=progress oflag=sync`
  - And finish with boot off the stick (remember to turn off Secure Boot in the BIOS!).

## Configuring and installing programs
- `sudo nixos-rebuild switch --flake ~/Projects/dotfiles#nixos`
