#!/bin/bash
pip install --upgrade pip
pip install --upgrade virtualenv
pip install ipython

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
$HOME/RCs/bin/firsttimesetup.sh

chsh -s /bin/zsh
git config --global core.editor "vim"
git config --global push.default simple
git config --global core.excludesfile ~/.gitignore_global

pip install pudb
