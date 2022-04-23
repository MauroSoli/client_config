#!/bin/bash
sudo pacman -Sy archlinux-keyring --noconfirm
sudo pacman -R nodejs-lts-gallium apm atom npm node-gyp nodejs-nopt npm semver yarn --noconfirm
sudo pacman -Syu
yay -Syu
yes | sudo pacman -S nodejs-lts-gallium --needed
sudo pacman -S atom --noconfirm --needed
#systemd-cryptenroll /dev/nvme0n1p1 --tpm2-pcrs=7+8 --tpm2-device=auto --wipe-slot=tpm2
