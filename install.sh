#!/bin/bash
cd /dev/shm
git clone https://github.com/mustafaozhan/Breeze-Adapta-Cursor

cd Breeze-Adapta-Cursor
PACKAGE="/usr/share/icons/Breeze-Adapta-Cursor/"

if [[ -d $PACKAGE ]]; then
    echo "Already installed, to re-install remove the $PACKAGE dir"
    exit 1
else
    echo "Installation in $PACKAGE ..."

    sudo mkdir $PACKAGE
    sudo mv *.theme cursors $PACKAGE

    echo Done
fi

exit 0
