#!/bin/bash
set -e

# pipewire packages + webrtc
sudo pacman -Sy lib32-pipewire lib32-pipewire-jack pipewire-jack libpipewire02 pipewire pipewire-alsa pipewire-pulse gst-plugin-pipewire
sudo pacman -Sy xdg-desktop-portal xdg-desktop-portal-gnome xdg-desktop-portal-gtk --noconfirm

# essential tools
sudo pacman -Sy traceroute kubectl
yay -Sy google-cloud-sdk --noconfirm

# hypervisor section
sudo pacman -Sy vagrant virt-manager iptables-nft dnsmasq bridge-utils openbsd-netcat --noconfirm

# optional software
sudo pacman -Sy telegram-desktop  --noconfirm
yay -Sy lens --noconfirm
