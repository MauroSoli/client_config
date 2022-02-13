#!/bin/bash
set -e

# GPU and rendering
sudo pacman -Sy xf86-video-nouveau --noconfirm

# Pipewire packages + webrtc
sudo pacman -S lib32-pipewire lib32-pipewire-jack pipewire-jack libpipewire02 pipewire pipewire-alsa pipewire-pulse gst-plugin-pipewire
sudo pacman -S xdg-desktop-portal xdg-desktop-portal-gnome xdg-desktop-portal-gtk --noconfirm

# Essential tools
sudo pacman -S traceroute kubectl
sudo pacman -S lshw --noconfirm
sudo pacman -S jre-openjdk --noconfirm
yay -S google-cloud-sdk --noconfirm

# Hypervisor section
sudo pacman -S vagrant virt-manager iptables-nft dnsmasq bridge-utils openbsd-netcat --noconfirm

# Optional software
sudo pacman -S telegram-desktop  --noconfirm
yay -Sy lens --noconfirm
pacman -Sy gnome-tweaks gnome-shell-extensions
yay -S chrome-gnome-shell --noconfirm

# Gnome software
sudo pacman -S gnome-software gnome-software-packagekit-plugin
