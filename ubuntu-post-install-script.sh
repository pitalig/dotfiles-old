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
sudo add-apt-repository ppa:upubuntu-com/tor-bundle -y # tor
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886 # spotify
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list # spotify

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
sudo apt-get install -y chromium-browser \
git \
gnome-tweak-tool \
keepass2 \
p7zip \
spotify-client \
steam \
sublime-text-installer \
terminator \
tor \
ubuntu-restricted-addons \
ubuntu-restricted-extras \
virtualbox \
vlc

echo 'Done.'
