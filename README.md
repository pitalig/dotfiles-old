# Dotfiles and install script

This is a bash script to run after a fresh Ubuntu Gnome or Arch/Manjaro Gnome install.

## Ubuntu script:

* Remove apps:
    - aisleriot Solitaire
    - brasero
    - empathy
    - evolution
    - mahjongg
    - mines
    - sudoku
* Update system and apps
* Install apps:
    - chromium
    - gnome tweak tool
    - p7zip
    - sublime Text 3 (with PPA)
    - ubuntu restricted addons/extras
    - vlc

## Arch / Manjaro script:

* Remove apps: 
    - brasero
    - empathy
    - evolution
    - hexchat
* Update system and apps
* Install apps:
    - gvim
    - zsh
    - gnome-tweak-tool
    - chromium
    - chromium-widevine
    - visual-studio-code
    - gimp
    - rambox-bin
    - htop
    - Oh-my-zsh
* Set keyboard shortcuts:
    - (CTRL + ALT + T) => gnome-terminal
* Copy configuration files to $HOME:
    - .zshrc
    - .gitconfig

## Usage:
- Install GIT
- Clone repo => `git clone https://github.com/pitalig/dotfiles.git dotfiles && cd dotfiles`
- Change **name** and **email** at **.gitconfig**
- Run => `sh install.sh`
- Follow screen instructions
