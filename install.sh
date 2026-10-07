#!/bin/bash

set -e

echo "========================================"
echo "Installing official Arch Linux packages"
echo "========================================"

sudo pacman -S --noconfirm ttf-jetbrains-mono-nerd fastfetch nano firefox htop kate kcalc libreoffice-fresh qbittorrent steam qemu-full virt-manager virt-viewer dnsmasq vde2 openbsd-netcat libguestfs discord dolphin dolphin-plugins

echo ""
echo "========================================"
echo "Enabling libvirtd services"
echo "========================================"

sudo systemctl enable --now libvirtd
sudo usermod -aG libvirt "${SUDO_USER:-$USER}"

echo ""
echo "========================================"
echo "Installing yay AUR helper"
echo "========================================"

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ..
rm -rf yay

echo ""
echo "========================================"
echo "Installing AUR packages"
echo "========================================"

yay -S --noconfirm visual-studio-code-bin brave-bin plasma6-wallpapers-smart-video-wallpaper-reborn

echo ""
echo "========================================"
echo "Restarting plasmashell"
echo "========================================"

systemctl --user restart plasma-plasmashell.service

echo ""
echo "========================================"
echo "Installation completed successfully"
echo "========================================"
echo ""
echo "Please reboot your system."
echo ""
