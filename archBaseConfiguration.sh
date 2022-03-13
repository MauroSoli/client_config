#!/bin/bash
set -e

# Networking
systemctl enable systemd-resolved.service --now
