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

# If Brewfile exists, rename it to Brewfile.old
if [ -f "./lists/Brewfile" ] ; then
    mv "./lists/Brewfile" "./lists/Brewfile.old"
fi

# Go to ./lists directory
cd ./lists || exit

# Generate a Brewfile
brew update
brew upgrade
brew bundle dump

# If a valid new Brewfile was generated, remove the old one
if [ -s "./Brewfile" ] ; then
    rm -f "./Brewfile.old"
else
    echo "ERROR: Brewfile generation failed or produced an empty file."
    # Restore the old Brewfile if it exists
    if [ -f "./Brewfile.old" ] ; then
        mv "./Brewfile.old" "./Brewfile"
        echo "Restored original Brewfile."
    fi
    exit 1
fi
