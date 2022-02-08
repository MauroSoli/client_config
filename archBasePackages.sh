#!/bin/bash
set -e

#Gpu and rendering
sudo pacman -Sy xf86-video-nouveau --noconfirm

# pipewire packages + webrtc
sudo pacman -Sy lib32-pipewire lib32-pipewire-jack pipewire-jack libpipewire02 pipewire pipewire-alsa pipewire-pulse gst-plugin-pipewire
sudo pacman -Sy xdg-desktop-portal xdg-desktop-portal-gnome xdg-desktop-portal-gtk --noconfirm

# essential tools
sudo pacman -Sy traceroute kubectl
sudo pacman -Sy lshw --noconfirm
sudo pacman -Sy jre-openjdk --noconfirm
yay -Sy google-cloud-sdk --noconfirm

# hypervisor section
sudo pacman -Sy vagrant virt-manager iptables-nft dnsmasq bridge-utils openbsd-netcat --noconfirm

# optional software
sudo pacman -Sy telegram-desktop  --noconfirm
yay -Sy lens --noconfirm
