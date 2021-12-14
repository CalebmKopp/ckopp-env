#!/usr/bin/env bash

if [ -f "./vsc_install.sh" ] ; then
    rm "./vsh_install.sh"
fi

code --list-extensions | xargs -L 1 echo code --install-extension >> vsc_install_list.sh

if [ -f "./Brewfile" ] ; then
    rm "./Brewfile"
fi

brew bundle dump