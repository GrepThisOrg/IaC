#!/bin/bash

set -e

echo "🔧 Starting system-wide Ansible installation using APT..."

# Update the system
sudo apt update && sudo apt upgrade -y

# Install useful base tools
echo "Installing Git, SSH, Python..."
sudo apt install -y git openssh-client curl software-properties-common python3 python3-yaml

# Add the official Ansible PPA and install Ansible
echo "Adding Ansible APT repository..."
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install -y ansible

# Optional: Install ansible-lint
echo "Installing ansible-lint (optional)..."
sudo apt install -y ansible-lint

# Optional: Install isolinux and syslinux-common for iso creation
echo "Installing isolinux and syslinux-common"
sudo apt install -y isolinux syslinux-common

# Optional: Install whois for hash password generation
echo "Installing whois"
sudo apt install -y whois

# Done
echo -e "Ansible has been successfully installed!"
ansible --version