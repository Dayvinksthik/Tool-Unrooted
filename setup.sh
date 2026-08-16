#!/data/data/com.termux/files/usr/bin/bash

echo "Updating and upgrading Termux..."
pkg update -y && pkg upgrade -y

echo "Changing repositories..."
termux-change-repo

echo "Installing Python and pip..."
pkg install python python-pip -y

if ! command -v python &> /dev/null
then
    echo "Error: Python not installed. Retrying..."
    pkg install python -y
fi

echo "Installing packages..."
pkg install termux-tools git openssh procps -y

echo "Installing Python libraries..."
pip install colorama pystyle requests

echo "Setting up storage permissions..."
termux-setup-storage

echo "Installing screen..."
pkg install screen -y

echo "Creating autoexec directories..."
mkdir -p /storage/emulated/0/Android/data/com.roblox.client/files/delta/autoexec
mkdir -p /storage/emulated/0/Android/data/com.roblox.client/files/fluxus/autoexec
mkdir -p /storage/emulated/0/RobloxClone001/Codex/Autoexec/

echo "Installation complete! -- KoalaHub | https://discord.gg/KoalaHub"
