#!/usr/bin/env bash

# If Visual Studio Code install list bash script exists, remove it
if [ -f "./lists/vsc_install_list.sh" ] ; then
    rm "./lists/vsc_install_list.sh"
fi

# If Visual Studio Code install list PowerShell script exists, remove it
if [ -f "./lists/vsc_install_list.ps1" ] ; then
    rm "./lists/vsc_install_list.ps1"
fi

# Get all current VSCode extensions and dump them to both files
echo "#!/bin/bash" >> ./lists/vsc_install_list.sh
echo "#!/usr/bin/env pwsh" >> ./lists/vsc_install_list.ps1
echo "" >> ./lists/vsc_install_list.ps1
echo "# Install all VSCode extensions from the list" >> ./lists/vsc_install_list.ps1
code --list-extensions | while read -r ext; do
    echo "code --install-extension $ext" >> ./lists/vsc_install_list.sh
    echo "code --install-extension $ext" >> ./lists/vsc_install_list.ps1
done

# If Brewfile exists, remove it
if [ -f "./lists/Brewfile" ] ; then
    rm "./lists/Brewfile"
fi

# Go to ./lists directory
cd ./lists || exit

# Generate a Brewfile
brew update
brew upgrade
brew bundle dump
