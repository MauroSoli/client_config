#!/bin/bash
# pipewire packages
sudo pacman -Sy lib32-pipewire lib32-pipewire-jack pipewire-jack libpipewire02 pipewire pipewire-alsa pipewire-pulse gst-plugin-pipewire

# optional software
yay -Sy lens --noconfirm
