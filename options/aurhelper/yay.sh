#!/bin/bash
clear
echo "==>  Script ArchLinux Post Installation  <=="
echo "                Por Krafairus"
echo ""
echo "==>  Actualizando El Sistema  <=="
sudo pacman -Syuu --noconfirm
echo "==>  Instalando Yay (aur helper cli)  <=="
sudo -k
git clone https://aur.archlinux.org/yay-git.git
cd yay-git
makepkg -si
ls
./options/desktop/systemop.sh
