#!/bin/bash
#Requires git to run, not installed because if you have this then I assume you have git

#TODO: figure out how to do switches better so can have more options
sudo apt update

INSTALL="sudo apt-get install "

#INSTALL PROGRAMS AND TOOLS
$INSTALL"build-essential" -y
$INSTALL"clang" -y
$INSTALL"python3" -y
$INSTALL"python-pip" -y
$INSTALL"gcc" -y
$INSTALL"cmake" -y
$INSTALL"i3" -y
$INSTALL"vim" -y
$INSTALL"terminator" -y
$INSTALL"tmux" -y
$INSTALL"git" -y
$INSTALL"zsh" -y
$INSTALL"ack-grep" -y
#set ack-grep to use the name ack
sudo dpkg-divert --local --divert /usr/bin/ack --rename --add /usr/bin/ack-grep
$INSTALL"firefox" -y
$INSTALL"curl" -y
$INSTALL"chromium-browser" -y
$INSTALL"ranger" -y
$INSTALL"pylint" -y
$INSTALL"arduino" -y
$INSTALL"cowsay" -y
$INSTALL"figlet" -y
$INSTALL"exuberant-ctags" -y
$INSTALL"colordiff" -y
$INSTALL"diffuse" -y
$INSTALL"source-highlight" -y
$INSTALL"dict dictd dict-gcide" -y
$INSTALL"dict-moby-thesaurus" -y
$INSTALL"aspell" -y
$INSTALL"feh" -y
$INSTALL"lua5.3" -y
$INSTALL"xcompmgr" -y
$INSTALL"xclip" -y
$INSTALL"libncurses5-dev libncursesw5-dev" -y
$INSTALL"xbacklight -y"

if [ "$1" = "-h" ]; then
    $INSTALL"nautilus-dropbox" -y
    $INSTALL"steam" -y
fi


$HOME/NewStartup/Common.sh
