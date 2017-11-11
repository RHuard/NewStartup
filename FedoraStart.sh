#!/bin/bash

sudo dnf check-update && sudo dnf upgrade -y

$INSTALL="sudo dnf install"

#Install software
$INSTALL"python" -y
$INSTALL"python3" -y
$INSTALL"clang" -y
$INSTALL"i3 i3status dmenu i3lock xbacklight conky" -y
$INSTALL"gcc" -y 
$INSTALL"dev86" #bcc -y
$INSTALL"cmake" -y
$INSTALL"vim" -y
$INSTALL"terminator" -y
$INSTALL"tmux" -y
$INSTALL"git" -y
$INSTALL"zsh" -y
$INSTALL"ack" -y
$INSTALL"firefox" -y
$INSTALL"curl" -y
$INSTALL"chromium" -y
$INSTALL"pylint" -y
$INSTALL"python3-pylint" -y
$INSTALL"arduino" -y
$INSTALL"cowsay" -y
$INSTALL"figlet" -y
$INSTALL"ctags" -y
$INSTALL"colordiff" -y
$INSTALL"source-highlight" -y
$INSTALL"dictd" -y
$INSTALL"aspell-en" -y
$INSTALL "dict-moby-thesaurus" -y
$INSTALL"aspell" -y
$INSTALL"ctags" -y
$INSTALL"feh" -y
$INSTALL"util-linux-user" -y

if [ "$1" = "-h" ]; then
    $INSTALL"nautilus-dropbox" -y
    $INSTALL"steam" -y
fi

$HOME/NewStartup/Common.sh
