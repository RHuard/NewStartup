function make_dir(){
    if [ ! -d $1 ]; then
        mkdir $1
    fi
}

#TODO: test this function
function install(){
    $INSTALL $1
}

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

if [ "$1" = "-h" ]; then
    $INSTALL"nautilus-dropbox" -y
    $INSTALL"steam" -y
fi

$INSTALL"python-pip"

#Make these if not already exist
make_dir ~/Programs

make_dir ~/Downloads

#isntall oh my zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

#AUTOMATICALLY SET UP RCs
#check to see if Documents exists:
make_dir ~/Documents

git clone https://github.com/rhuard/RCs.git ~/RCs
~/RCs/firsttimesetup.sh

chsh -s /bin/zsh


#swap capslock and escape because ergonomics
xmodmap -e "remove Lock = Caps_Lock"
xmodmap -e "keycode 9 = Caps_Lock NoSymbol Caps_Lock"
xmodmap -e "keycode 66 = Escape NoSymbol Escape"
xmodmap -pke > ~/.xmodmap
xmodmap -e "remove Lock = Caps_Lock"
