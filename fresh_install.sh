#!/usr/bin/env bash

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install Brewfile contents
brew bundle --file="./Brewfile"

# this should install visual-studio-code, so we can run the vsc_install_list
/bin/bash vsc_install_list.sh