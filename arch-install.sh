#!/bin/bash

echo '------------------------------'
echo '===> Gabriel Pitali dotfiles'
echo '------------------------------'


# ===> Remove unused packages

echo ' '
echo '===> 1 - Remove unused'
sudo pacman -Rsn brasero empathy evolution hexchat --noconfirm
echo ' '
echo 'Done.'


# ===> 1 - System update/upgrade

echo ' '
echo '===> 2 - Update repository information'
yaourt -Syyu --noconfirm
echo ' '
echo 'Done.'


# ===> 2 - Install apps

echo ' '
echo '===> 3 - Install apps'
yaourt -S gvim zsh git gnome-tweak-tool chromium chromium-widevine visual-studio-code gimp rambox-bin htop
echo ' '
echo 'Done.'


# ===> 3 - Install oh-my-zsh

echo ' '
echo '===> 4 - Install oh-my-zsh'
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo ' '
echo 'Done.'


# ===> 4 - Remove old dotfiles and copy new ones

echo ' '
echo '===> 4 - Remove old dotfiles and copy new ones'
rm -rf ~/.zshrc ~/.gitconfig
cp .zshrc ~/
cp .gitconfig ~/
echo ' '
echo 'Done.'


# ===> 5 - Set keyboard shortcut (ctrl + alt + T) to gnome-terminal

echo ' '
echo '===> 5 - Set keyboard shortcut (ctrl + alt + T) to gnome-terminal
sudo -u gabriel dbus-launch gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/']"
sudo -u gabriel dbus-launch gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ name "Terminal"
sudo -u gabriel dbus-launch gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ command "gnome-terminal"
sudo -u gabriel dbus-launch gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ binding "<Primary><Alt>t"
echo ' '
echo 'Done.'