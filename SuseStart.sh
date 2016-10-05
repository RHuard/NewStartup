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
#Figure out how to use Zypper for Ranger, dwb, diffuse

if [ "$1" = "-h" ]; then
    $INSTALL"nautilus-dropbox" -y
    $INSTALL"steam" -y
fi

$INSTALL"python-pip"


git clone https://github.com/rhuard/RCs.git ~/RCs
chmod +x ~/RCs/firsttimesetup.sh
chmod +x ~/RCs/rcsetup.sh

~/RCs/firsttimesetup.sh

chsh -s /bin/zsh
