#!/usr/bin/env bash

# If Visual Studio Code install list bash script exists, remove it
if [ -f "./lists/vsc_install_list.sh" ] ; then
    rm "./lists/vsc_install_list.sh"
fi

# Get all current VSCode extensions and dump them to file
code --list-extensions | xargs -L 1 echo code --install-extension >> ./lists/vsc_install_list.sh

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