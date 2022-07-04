#!/bin/bash
set -e

# Networking
systemctl enable systemd-resolved.service --now

# Git configuration
mkdir -p ~/git/
cd ~/git/
if [ $? = "0" ]; then
    git clone git@github.com:MauroSoli/client_config.git
    git clone git@github.com:MauroSoli/Mecojoni.git
else
 echo "Problem with folder creation"
fi

# Sudoers config
# 30 min timeout
echo 'Defaults env_reset,timestamp_timeout=30' > /etc/sudoers.d/custom
