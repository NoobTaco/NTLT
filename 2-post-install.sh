#!/bin/bash
# NoobTaco Simple Post-install script

# Install Wine
sudo dpkg --add-architecture i386 &&
wget -nc https://dl.winehq.org/wine-builds/winehq.key &&
sudo apt-key add winehq.key &&
sudo apt-add-repository -y 'deb https://dl.winehq.org/wine-builds/ubuntu/ eoan main'  &&
# Add Lutris repository
sudo add-apt-repository ppa:lutris-team/lutris &&
sudo apt update &&

echo "**************************" &&
echo Installing APT Software &&
echo "**************************" &&
sudo apt install htop steam lutris &&

echo "**************************" &&
echo Installing SNAP Software &&
echo "**************************" &&

# Use code insider untill system sync is rolled into mainline
sudo snap install code-insiders --classic &&
sudo snap install yakyak &&

echo "**************************" &&
echo Installing FLATPAK Software &&
echo "**************************" &&
flatpak install -y flathub org.gimp.GIMP &&
flatpak install -y flathub org.inkscape.Inkscape &&
flatpak install -y flathub com.axosoft.GitKraken &&
flatpak install -y flathub org.kde.krita &&
flatpak install -y flathub org.kde.kdenlive &&
flatpak install -y flathub org.audacityteam.Audacity

