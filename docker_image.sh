#!/bin/bash
#Requires git to run, not installed because if you have this then I assume you have git

#TODO: figure out how to do switches better so can have more options
INSTALL="apt-get install "

#INSTALL PROGRAMS AND TOOLS
$INSTALL"build-essential" -y
$INSTALL"clang" -y
$INSTALL"python2.7" -y
$INSTALL"python3" -y
$INSTALL"python-pip" -y
$INSTALL"gcc" -y
$INSTALL"bcc" -y
$INSTALL"cmake" -y
$INSTALL"vim" -y
$INSTALL"tmux" -y
$INSTALL"zsh" -y
$INSTALL"ack-grep" -y
#set ack-grep to use the name ack
dpkg-divert --local --divert /usr/bin/ack --rename --add /usr/bin/ack-grep
$INSTALL"curl" -y
$INSTALL"ranger" -y
$INSTALL"pylint" -y
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
$INSTALL"bsdmainutils" -y

$HOME/NewStartup/NoSudoCommon.sh
