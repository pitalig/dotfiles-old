#!/bin/bash

function rm_apps {
    # ===> 1 - Remove unused apps
    echo ' '
    echo '===> 1 - Remove unused apps'
    sudo pacman -Rsn brasero empathy evolution hexchat --noconfirm
    echo ' '
    echo 'Done.'
}

function update {
    # ===> 2 - Update apps, system and repository information
    echo ' '
    echo '===> 2 - Update apps, system and repository information'
    yaourt -Syyu --noconfirm
    echo ' '
    echo 'Done.'
}

function ins_apps {
    # ===> 3 - Install apps
    echo ' '
    echo '===> 3 - Install apps'
    yaourt -S gvim zsh gnome-tweak-tool chromium chromium-widevine visual-studio-code gimp rambox-bin htop --noconfirm
    echo ' '
    echo 'Done.'
}

function ins_omz {
    # ===> 4 - Install oh-my-zsh
    echo ' '
    echo '===> 4 - Install oh-my-zsh'
    git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
    chsh -s /bin/zsh
    echo ' '
    echo 'Done.'
}

function cp_dotfiles {
    # ===> 5 - Remove old dotfiles and copy new ones
    echo ' '
    echo '===> 5 - Remove old dotfiles and copy new ones'
    rm -rf ~/.zshrc ~/.gitconfig
    cp .zshrc ~/
    cp .gitconfig ~/
    echo ' '
    echo 'Done.'
}

function set_keys {
    # ===> 6 - Set keyboard shortcut (ctrl + alt + T) to gnome-terminal
    echo ' '
    echo '===> 6 - Set keyboard shortcut (ctrl + alt + T) to gnome-terminal'
    sudo -u gabriel dbus-launch gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/']"
    sudo -u gabriel dbus-launch gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ name "Terminal"
    sudo -u gabriel dbus-launch gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ command "gnome-terminal"
    sudo -u gabriel dbus-launch gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ binding "<Primary><Alt>t"
    echo ' '
    echo 'Done.'
}

echo ' '
echo 'Options:'
echo '1 - Remove unused apps'
echo '2 - Update apps, system and repository information'
echo '3 - Install apps'
echo '4 - Install oh-my-zsh'
echo '5 - Remove old dotfiles and copy new ones'
echo '6 - Set keyboard shortcut (ctrl + alt + T) to gnome-terminal'
read -p "Write all the options you want. Write '123456' to do everything."
echo ' '

for (( i=0; i<${#REPLY}; i++ )); do
    case ${REPLY:$i:1} in
        [1] ) rm_apps;;
        [2] ) update;;
        [3] ) ins_apps;;
        [4] ) ins_omz;;
        [5] ) cp_dotfiles;;
        [6] ) set_keys;;
        [*] ) echo "Invalid option.";;
    esac
done