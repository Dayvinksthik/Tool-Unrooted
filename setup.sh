#!/data/data/com.termux/files/usr/bin/bash

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  Nexora | Unrooted Setup"
echo "  discord.gg/dCMVzpBuTm"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

echo "[1/7] Updating Termux packages..."
pkg update -y && pkg upgrade -y

echo "[2/7] Changing repositories..."
termux-change-repo

echo "[3/7] Installing Python and pip..."
pkg install python python-pip -y

if ! command -v python &> /dev/null; then
    echo "Error: Python not installed. Retrying..."
    pkg install python -y
fi

echo "[4/7] Installing Termux tools..."
pkg install termux-tools git openssh procps screen -y

echo "[5/7] Installing Python libraries..."
pip install colorama pystyle requests

echo "[6/7] Setting up storage permissions..."
termux-setup-storage

echo "[7/7] Creating autoexec directories..."
mkdir -p /storage/emulated/0/Delta/Autoexecute
mkdir -p /storage/emulated/0/Delta/Workspace
mkdir -p /storage/emulated/0/RobloxClone001/Codex/Autoexec/

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  Setup complete!"
echo "  Run: python Rejoin.py"
echo "  Nexora | discord.gg/dCMVzpBuTm"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
