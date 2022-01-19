#!/usr/bin/env bash

if [ -f "./lists/vsc_install.sh" ] ; then
    rm "./lists/vsh_install.sh"
fi

code --list-extensions | xargs -L 1 echo code --install-extension >> ./lists/vsc_install_list.sh

if [ -f "./lists/Brewfile" ] ; then
    rm "./lists/Brewfile"
fi

cd ./lists || exit

brew bundle dump