#!/bin/bash
set -eu

# Update system
sudo pacman -Syu

#Install git and yay
sudo pacman -Sy git subversion --noconfirm --needed
if [ ! -f "/bin/yay" ]; then
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si --noconfirm
    cd ..
    rm -rf yay
fi

# systemd-resolvd binary
sudo pacman -S systemd-resolvconf --noconfirm --needed

# Pipewire packages + webrtc
sudo pacman -S  libpipewire02 pipewire pipewire-alsa gst-plugin-pipewire --needed --noconfirm
yes | sudo pacman -S pipewire-pulse --needed
yes | sudo pacman -S pipewire-jack  --needed
sudo pacman -S  xdg-desktop-portal xdg-desktop-portal-gnome xdg-desktop-portal-gtk --noconfirm --needed

# Gnome software
sudo pacman -S gnome-shell  gnome-terminal  gnome-tweak-tool gnome-control-center xdg-user-dirs gdm --noconfirm --needed
sudo pacman -S nautilus --noconfirm --needed
sudo pacman -S gnome-software gnome-software-packagekit-plugin gnome-multi-writer --noconfirm --needed
sudo pacman -S networkmanager-fortisslvpn --noconfirm --needed
sudo pacman -S gnome-tweaks gnome-shell-extensions --noconfirm --needed
sudo pacman -Sy dconf dconf-editor --noconfirm --needed
yay -S chrome-gnome-shell --noconfirm --needed

# Essential tools/software
sudo pacman -S git-lfs --noconfirm --needed
git lfs install 
sudo pacman -S vi net-tools --noconfirm --needed
yay -Sy nautilus-compare --noconfirm --needed
sudo pacman -S terminator --noconfirm --needed
sudo pacman -S kubectl --noconfirm --needed
sudo pacman -S rclone --noconfirm --needed
sudo pacman -S duplicity python-requests-oauthlib --noconfirm --needed 
sudo pacman -S rsnapshot --noconfirm --needed
sudo pacman -S lshw --noconfirm --needed
sudo pacman -S jre-openjdk --noconfirm --needed
sudo pacman -S podman --noconfirm --needed
sudo pacman -S traceroute --noconfirm --needed
sudo pacman -S openfortivpn --noconfirm --needed
sudo pacman -S terragrunt --noconfirm --needed
sudo pacman -S obs-studio --noconfirm --needed
sudo pacman -S ansible --noconfirm --needed
sudo pacman -S mariadb-clients --noconfirm --needed
yes | sudo pacman -S nodejs-lts-fermium --needed
sudo pacman -S nodejs-nopt libxss c-ares nodejs-nopt semver node-gyp npm yarn --noconfirm --needed
yay -S lens --removemake --noconfirm --needed # dev'essere prima di ATOM! Meglio non usare noconfirm
yay -S google-chrome --noconfirm --needed
yay -S openfortigui --noconfirm --needed
yay -S tigervnc-viewer  --noconfirm --needed

# Code editors
sudo pacman -S code --noconfirm --needed
yes | sudo pacman -S nodejs-lts-gallium --needed
sudo pacman -S atom --noconfirm --needed

#Cloud CLI
sudo pacman -S aws-cli --noconfirm --needed
yay -S google-cloud-sdk --noconfirm --needed

# Hypervisor section
yes | sudo pacman -S iptables-nft --needed
sudo pacman -S vagrant virt-manager bridge-utils openbsd-netcat --noconfirm --needed

# Optional software
sudo pacman -S telegram-desktop --noconfirm --needed
sudo pacman -S solaar --noconfirm --needed
sudo pacman -S ipcalc --noconfirm --needed
yay -S spotify --noconfirm --needed

# Fonts
sudo pacman -S ttf-cascadia-code --noconfirm --needed
