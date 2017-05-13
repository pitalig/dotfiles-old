#!/bin/bash

echo '------------------------------'
echo '===> Gabriel Pitali dotfiles'
echo '------------------------------'
echo ' '
read -p "Press 'A' for Arch/Manjaro or 'U' for Ubuntu" -n 1 -r
echo ' '
case $REPLY in
    [Uu]* ) sh ubuntu-install.sh ;;
    [Aa]* ) sh arch-install.sh ;;
    * ) echo "Invalid option." ;;
esac