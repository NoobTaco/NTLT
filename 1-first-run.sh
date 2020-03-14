#!/bin/bash
# NoobTaco Simple Post-install script

## First Run to setup flatpack and snap

echo "**************************" &&
echo Running APT UPDATE. &&
echo "**************************" &&
sudo apt update &&

echo "**************************" &&
echo Running APT UPGRADE &&
echo "**************************" &&
sudo apt upgrade &&

echo "**************************" &&
echo Installing NVM &&
echo "**************************" &&
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.35.2/install.sh | bash &&

echo "**************************" &&
echo Install Snapd and Flatpak &&
echo "**************************" &&
sudo apt install snapd flatpak &&

# Add Flatpak Hub Repo
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo &&

reboot