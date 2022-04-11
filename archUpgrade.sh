#!/bin/bash
sudo pacman -Sy archlinux-keyring --noconfirm
sudo pacman -Syu
sudo pacman -R nodejs-lts-gallium apm atom --noconfirm
yay -Syu
yes | sudo pacman -S nodejs-lts-gallium --needed
sudo pacman -S atom --noconfirm --needed
#systemd-cryptenroll /dev/nvme0n1p1 --tpm2-pcrs=7+8 --tpm2-device=auto --wipe-slot=tpm2