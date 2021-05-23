
#!bin/bash

# Updates apt
apt update -y

# Upgrade all installed packages
apt upgrde -y

# Install new packages and upgrade the system and uninstall any old packages
apt full-upgrade -y

# Remove unused packages and their associated configuration files
apt autoremove --purge -y

# Bonus - Perform with a single line of code.
apt update -y && apt upgrade -y && apt full-upgrade -y && apt-get autoremove --purge -y


