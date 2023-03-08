#!/bin/bash
clear
echo "==>  Script ArchLinux Post Installation  <=="
echo "                Por Krafairus"
echo ""
echo "==>  Actualizando El Sistema  <=="
sudo pacman -Syuu --noconfirm
echo "==>  Instalando Paru (aur helper cli)  <=="
sudo pacman -S --noconfirm --needed base-devel git
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
./options/desktop/systemop.sh
 
