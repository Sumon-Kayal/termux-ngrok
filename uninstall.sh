#!/bin/bash

# Safety check: ensure we are in Termux
if [ -z "$PREFIX" ]; then
    echo -e "\e[1;31mError: This script must be run inside Termux.\e[0m"
    exit 1
fi

echo -e "\e[1;31mUninstalling ngrok from Termux...\e[0m"

# 1. Remove the binary
if [ -f "$PREFIX/bin/ngrok" ]; then
    rm "$PREFIX/bin/ngrok"
    echo "Removed: $PREFIX/bin/ngrok"
fi

# 2. Remove the share directory
if [ -d "$PREFIX/share/ngrok" ]; then
    rm -rf "$PREFIX/share/ngrok"
    echo "Removed: $PREFIX/share/ngrok"
fi

# 3. Remove Configuration Files (CRITICAL for Termux)
# Ngrok stores tokens in these hidden folders in the home directory
if [ -d "$HOME/.config/ngrok" ]; then
    rm -rf "$HOME/.config/ngrok"
    echo "Removed: config folder ($HOME/.config/ngrok)"
fi

if [ -d "$HOME/.ngrok2" ]; then
    rm -rf "$HOME/.ngrok2"
    echo "Removed: legacy config folder ($HOME/.ngrok2)"
fi

# 4. Optional: Clean up package cache (only if --prune flag is provided)
if [ "$1" == "--prune" ]; then
    echo -e "\e[1;34mCleaning package cache...\e[0m"
    pkg clean
elif [ "$1" != "--no-prompt" ]; then
    # Interactive confirmation for cleanup
    read -p "Do you want to clean the package cache? (y/N): " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        echo -e "\e[1;34mCleaning package cache...\e[0m"
        pkg clean
    fi
fi

echo -e "\e[1;32mNgrok has been completely removed!\e[0m"
