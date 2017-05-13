#!/bin/bash


echo '------------------------------------------------------------------------'
echo '=> Ubuntu GNOME 16.04 post-install script'
echo '------------------------------------------------------------------------'

# -----------------------------------------------------------------------------
# => Remove unused packages
# -----------------------------------------------------------------------------
echo '=> Remove unused'
sudo apt purge -y aisleriot brasero empathy evolution gnome-mahjongg gnome-mines gnome-sudoku
sudo apt autoremove -y

echo 'Done.'

# -----------------------------------------------------------------------------
# => Add PPAs (Personal Package Archives)
# -----------------------------------------------------------------------------
echo '=> Add PPAs'
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3 # Sublime Text 3

echo 'Done.'

# -----------------------------------------------------------------------------
# => System update/upgrade
# -----------------------------------------------------------------------------
echo '=> Update repository information'
sudo apt-get update -qqtr
echo '=> Performe system upgrade'
sudo apt-get dist-upgrade -y
echo '=> Performe apps upgrade'
sudo apt-get upgrade -y
echo 'Done.'

# -----------------------------------------------------------------------------
# => Install apps
# -----------------------------------------------------------------------------
echo '=> Install apps'
sudo apt-get install -y chromium-browser gnome-tweak-tool p7zip sublime-text-installer ubuntu-restricted-addons ubuntu-restricted-extras vlc
echo 'Done.'
