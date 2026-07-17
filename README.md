# ArchLinuxHyprland

My personal Arch Linux Apps setup script.

The goal is simple: restore my applications with a single script.

## Requirements

Install Git and Base Development tools:

```bash
sudo pacman -Syu
sudo pacman -S base-devel git
```

## Clone the Repository

```bash
git clone https://github.com/RicardoDereste/ArchApps.git

cd ArchApps
```

## Run the Installer

Make the script executable:

```bash
chmod +x install.sh
```

Run the installer:

```bash
./install.sh
```

## What the Script Does

### Official Packages

Installs all packages using Pacman.


## AUR Packages

Installs Yay and packages using Yay.

## Configuration Files

The installer automatically copies and overwrites all the configuration files.

## Repository Structure

```text
ArchLinuxHyprland/
├── install.sh
├── README.md
├── Wallpapers
    ├── ArchLinux.png
```

## After Installation

Reboot the system:

```bash
reboot
```