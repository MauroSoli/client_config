# Rsync to PC migration
sudo rsync -avzpg -R --progress \
/home/linux/.atom \
/home/linux/.bash* \
/home/linux/.config \
/home/linux/.duplicity* \
/home/linux/.gitconfig \
/home/linux/.k8slens \
/home/linux/.kube \
/home/linux/.local \
/home/linux/.openfortigui \
/home/linux/.ssh \
/home/linux/.subversion \
/home/linux/.vim* \
/home/linux/.vnc \
/home/linux/.vscode-oss \
/home/linux/app \
/home/linux/Documents \
/home/linux/OneDrive \
/home/linux/S3-RCS \
/home/linux/Videos \
/home/linux/Pictures \
/etc/systemd/journald.conf \
/etc/systemd/logind.conf \
/etc/ssh/ssh_config \
/etc/UPower \
/etc/rsnapshot.conf \
/etc/hosts \
/etc/resolv.conf \
/etc/systemd/resolved.conf \
/usr/share/icons \
/usr/share/themes \
/etc/NetworkManager/system-connections/Vodafone-Valopolish.nmconnection \
/etc/NetworkManager/system-connections/POLiSh\ CASA.nmconnection \
/etc/NetworkManager/system-connections/RCS-VPN.nmconnection \
/etc/NetworkManager/system-connections/Vodafone-Valopolish.nmconnection \
/etc/NetworkManager/NetworkManager.conf
/usr/share/gnome-shell \
root@10.15.20.124:/



# duplicity backup
duplicity --name Dellarch --encrypt-key MauroSoli --full-if-older-than 3M --progress --verbosity info \
--include="/home/linux/.atom" \
--include="/home/linux/.bash*" \
--include="/home/linux/.config" \
--include="/home/linux/.duplicity*" \
--include="/home/linux/.gitconfig" \
--include="/home/linux/.k8slens" \
--include="/home/linux/.kube" \
--include="/home/linux/.local" \
--include="/home/linux/.openfortigui" \
--include="/home/linux/.ssh" \
--include="/home/linux/.subversion" \
--include="/home/linux/.vim*" \
--include="/home/linux/.vnc" \
--include="/home/linux/.vscode-oss" \
--include="/home/linux/app" \
--include="/home/linux/Documents" \
--include="/home/linux/OneDrive" \
--include="/home/linux/S3-RCS" \
--include="/home/linux/Videos" \
--include="/home/linux/Pictures" \
--include="/etc/systemd/journald.conf" \
--include="/etc/systemd/logind.conf" \
--include="/etc/ssh/ssh_config" \
--include="/etc/UPower" \
--include="/etc/rsnapshot.conf" \
--include="/etc/hosts" \
--include="/etc/resolv.conf" \
--include="/etc/systemd/resolved.conf" \
--include="/usr/share/icons" \
--include="/usr/share/themes" \
--include="/etc/NetworkManager/system-connections/Vodafone-Valopolish.nmconnection" \
--include="/etc/NetworkManager/system-connections/POLiSh\ CASA.nmconnection" \
--include="/etc/NetworkManager/system-connections/RCS-VPN.nmconnection" \
--include="/etc/NetworkManager/system-connections/Vodafone-Valopolish.nmconnection" \
--include="/etc/NetworkManager/NetworkManager.conf" \
--include="/usr/share/gnome-shell" \
--exclude='**' \
/ \
onedrive://duplicity/

