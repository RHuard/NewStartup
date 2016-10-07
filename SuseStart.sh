
zypper refresh

$INSTALL="sudo Zypper install"

#Install software
$INSTALL"-t pattern devel_basis"
$INSTALL"python"
$INSTALL"python3"
$INSTALL"llvm-clang"
$INSTALL"i3"
$INSTALL"gcc"
$INSTALL"dev86" #bcc
$INSTALL"cmake"
$INSTALL"vim"
$INSTALL"terminator"
$INSTALL"zsh"
$INSTALL"ack"
$INSTALL"firefox"
$INSTALL"curl"
$INSTALL"chromium-browser"
$INSTALL"arduino"
$INSTALL"cowsay"
$INSTALL"figlet"
$INSTALL"ctags"
$INSTALL"colordiff"
$INSTALL"source-highlight"
$INSTALL"dict dictd dict-gcide"
$INSTALL"aspell"

if [ "$1" = "-h" ]; then
    $INSTALL"nautilus-dropbox" -y
    $INSTALL"steam" -y
fi

$INSTALL"python-pip"
sudo pip install --upgrade pip
sudo pip install --upgrade virtualenv

#Make these if not already exist
mkdir -p $HOME/Programs

mkdir -p $HOME/Downloads

#isntall oh my zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

#check to see if Documents exists:
mkdir -p $HOME/Documents

#install my own project
git clone https://github.com/rhuard/ldict.git $HOME/Programs/ldict
make -f $HOME/Programs/ldict/Makefile install

#AUTOMATICALLY SET UP RCs
git clone https://github.com/rhuard/RCs.git $HOME/RCs
$HOME/RCs/firsttimesetup.sh

chsh -s /bin/zsh


#swap capslock and escape because ergonomics
xmodmap -e "remove Lock = Caps_Lock"
xmodmap -e "keycode 9 = Caps_Lock NoSymbol Caps_Lock"
xmodmap -e "keycode 66 = Escape NoSymbol Escape"
xmodmap -pke > $HOME/.xmodmap
xmodmap -e "remove Lock = Caps_Lock"
