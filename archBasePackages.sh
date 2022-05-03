#!/bin/bash
set -eu

# Update system
sudo pacman -Syu

# Base Packages from Endeavour OS
sudo pacman -S dhclient dialog dnsmasq dnsutils ethtool modemmanager nbd ndisc6 \
nss-mdns openconnect openvpn ppp pptpclient rp-pppoe sshfs usb_modeswitch vpnc whois \
wireless-regdb wireless_tools wpa_supplicant xl2tpd firewalld python-pyqt5 python-capng \
bluez bluez-utils pacman-contrib pkgfile rebuild-detector reflector accountsservice \
bash-completion ffmpegthumbnailer gst-libav gst-plugin-pipewire gst-plugins-bad gst-plugins-ugly \
libdvdcss libgsf libopenraw mlocate poppler-glib xdg-user-dirs xdg-utils \
efitools haveged mtools sg3_utils --noconfirm --needed

# Install git and yay
sudo pacman -S git subversion --noconfirm --needed
if [ ! -f "/bin/yay" ]; then
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si --noconfirm
    cd ..
    rm -rf yay
fi

# systemd-resolvd binary
sudo pacman -S systemd-resolvconf --noconfirm --needed

# Driver + firmware 
sudo pacman -S xf86-video-amdgpu xf86-video-ati xf86-video-intel b43-fwcutter broadcom-wl-dkms --noconfirm --needed
sudo pacman -S ipw2100-fw ipw2200-fw --noconfirm --needed
sudo pacman -S alsa-firmware alsa-plugins alsa-utils pavucontrol amd-ucode dmidecode dmraid \
hdparm hwdetect intel-ucode lsscsi sof-firmware power-profiles-daemon upower --noconfirm --needed

# Pipewire packages + webrtc
sudo pacman -S  libpipewire02 pipewire pipewire-alsa gst-plugin-pipewire pipewire-media-session --needed --noconfirm
yes | sudo pacman -S pipewire-pulse --needed
yes | sudo pacman -S pipewire-jack  --needed
sudo pacman -S  xdg-desktop-portal xdg-desktop-portal-gnome xdg-desktop-portal-gtk --noconfirm --needed

# Style
yay -Sy adwaita-dark candy-icons-git --noconfirm --needed

# Fonts
sudo pacman -S freetype2 cantarell-fonts ttf-cascadia-code noto-fonts ttf-bitstream-vera \
ttf-dejavu ttf-liberation ttf-opensans adobe-source-han-sans-cn-fonts adobe-source-han-sans-jp-fonts \
adobe-source-han-sans-kr-fonts --noconfirm --needed

# Gnome software
sudo pacman -S gnome-shell  gnome-terminal  gnome-tweak-tool gnome-control-center xdg-user-dirs gdm --noconfirm --needed
sudo pacman -S nautilus --noconfirm --needed
sudo pacman -S gnome-software gnome-software-packagekit-plugin gnome-multi-writer gnome-sound-recorder --noconfirm --needed
sudo pacman -S networkmanager-fortisslvpn networkmanager-openvpn --noconfirm --needed
sudo pacman -S gnome-tweaks gnome-shell-extensions --noconfirm --needed
sudo pacman -Sy dconf dconf-editor --noconfirm --needed
yay -S chrome-gnome-shell --noconfirm --needed

# Essential tools/software
sudo pacman -S git-lfs --noconfirm --needed
git lfs install
sudo pacman -S python-pip --noconfirm --needed
sudo pip install pre-commit
sudo pacman -S vi pwgen man net-tools unrar unzip xz wget inetutils --noconfirm --needed
sudo pacman -S nfs-utils nilfs-utils ntp smartmontools nmap --noconfirm --needed
sudo pacman -S ncdu meld --noconfirm --needed
sudo pacman -S terminator --noconfirm --needed
sudo pacman -S kubectl --noconfirm --needed
sudo pacman -S rclone fuse --noconfirm --needed
sudo pacman -S duplicity python-requests-oauthlib --noconfirm --needed
sudo pacman -S rsnapshot --noconfirm --needed
sudo pacman -S lshw tpm2-tools --noconfirm --needed
sudo pacman -S jre-openjdk --noconfirm --needed
sudo pacman -S podman --noconfirm --needed
sudo pacman -S docker --noconfirm --needed
sudo pacman -S traceroute --noconfirm --needed
sudo pacman -S openfortivpn --noconfirm --needed
sudo pacman -S terragrunt --noconfirm --needed
sudo pacman -S obs-studio --noconfirm --needed
sudo pacman -S ansible --noconfirm --needed
sudo pacman -S mariadb-clients --noconfirm --needed
sudo pacman -S remmina --noconfirm --needed
sudo pacman -S bitwarden --noconfirm --needed
sudo pacman -S firefox --noconfirm --needed
yes | sudo pacman -S nodejs-lts-fermium --needed
sudo pacman -S nodejs-nopt libxss c-ares nodejs-nopt semver node-gyp npm yarn --noconfirm --needed
yay -Sy nautilus-compare --noconfirm --needed
#yay -S lens --removemake --noconfirm --needed # dev'essere prima di ATOM! Meglio non usare noconfirm
yay -S lens-bin --removemake --noconfirm --needed
yay -S google-chrome --noconfirm --needed
yay -S openfortigui --noconfirm --needed
yay -S tigervnc-viewer  --noconfirm --needed
a
# Code editors
sudo pacman -S code --noconfirm --needed
#yes | sudo pacman -S nodejs-lts-gallium --needed
#sudo pacman -S atom --noconfirm --needed
yay -S atom-editor-beta-bin --removemake --noconfirm --needed
yay -S onlyoffice-bin --noconfirm --needed
wget -O - https://raw.githubusercontent.com/laurent22/joplin/dev/Joplin_install_and_update.sh | bash # Joplin from appimage

#Cloud CLI
sudo pacman -S aws-cli --noconfirm --needed
yay -S google-cloud-sdk --noconfirm --needed

# Hypervisor section
yes | sudo pacman -S iptables-nft --needed
sudo pacman -S vagrant packer virt-manager bridge-utils openbsd-netcat --noconfirm --needed

# Optional software
sudo pacman -S telegram-desktop --noconfirm --needed
sudo pacman -S solaar --noconfirm --needed
sudo pacman -S ipcalc --noconfirm --needed
yay -S spotify --noconfirm --needed
