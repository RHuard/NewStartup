#!/bin/bash
sudo pip install --upgrade pip
sudo pip install --upgrade virtualenv

#Make these if not already exist
mkdir -p $HOME/Programs

mkdir -p $HOME/Downloads

#isntall oh my zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

#check to see if Documents exists:
mkdir -p $HOME/Documents

#install my own projects
git clone https://github.com/rhuard/ldict.git $HOME/Programs/ldict
make -f $HOME/Programs/ldict/Makefile install

git clone https://github.com/rhuard/saspell.git $HOME/Programs/saspell
make -f $HOME/Programs/saspell/Makefile install

#Automatically setup RCs
git clone https://github.com/rhuard/RCs.git $HOME/RCs
$HOME/RCs/firsttimesetup.sh

chsh -s /bin/zsh

#swap capslock and escape because ergonomics
xmodmap -e "remove Lock = Caps_Lock"
xmodmap -e "keycode 9 = Caps_Lock NoSymbol Caps_Lock"
xmodmap -e "keycode 66 = Escape NoSymbol Escape"
xmodmap -pke > $HOME/.xmodmap
xmodmap -e "remove Lock = Caps_Lock"
