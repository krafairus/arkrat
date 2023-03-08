#!/bin/bash
clear
echo "==>  Script ArchLinux Post Installation  <=="
echo "                Por Krafairus"
echo ""
echo "==>  Actualizando El Sistema  <=="
sudo pacman -Syuu --noconfirm
echo "==>  Instalando Pamac (aur helper gui)  <=="
sudo pacman -S --noconfirm --needed base-devel git
git clone https://aur.archlinux.org/yay-git.git
cd yay-git
makepkg -si
yay -S pamac-aur
sudo pacman -Syu
git clone https://aur.archlinux.org/archlinux-appstream-data-pamac.git
cd archlinux-appstream-data-pamac
makepkg -si

./options/desktop/systemop.sh
 
