#!/bin/bash

zypper refresh

$INSTALL="sudo Zypper install"

#Install software
$INSTALL"-t pattern devel_basis"
$INSTALL"python3"
$INSTALL"llvm-clang"
$INSTALL"i3"
$INSTALL"gcc"
$INSTALL"dev86" #bcc
$INSTALL"cmake"
$INSTALL"vim"
$INSTALL"terminator"
$INSTALL"tmux"
$INSTALL"git"
$INSTALL"zsh"
$INSTALL"ack"
$INSTALL"firefox"
$INSTALL"curl"
$INSTALL"chromium-browser"
$INSTALL"pylint"
$INSTALL"python3-pylint"
$INSTALL"arduino"
$INSTALL"cowsay"
$INSTALL"figlet"
$INSTALL"ctags"
$INSTALL"colordiff"
$INSTALL"source-highlight"
$INSTALL"dict dictd dict-gcide"
$INSTALL "dict-moby-thesaurus"
$INSTALL"aspell"
$INSTALL"ctags"
$INSTALL"feh"

if [ "$1" = "-h" ]; then
    $INSTALL"nautilus-dropbox" -y
    $INSTALL"steam" -y
fi

$HOME/NewStartup/Common.sh
