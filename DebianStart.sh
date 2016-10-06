#Requires git to run, not installed because if you have this then I assume you have git

#TODO: figure out how to do switches better so can have more options

#test if paramter 1 exists as a directory, if it does not then make it
function make_dir(){ #TODO: replace with mkdir -p
    if [ ! -d $1 ]; then
        mkdir $1
    fi
}

#TODO: test this function
function install(){
    $INSTALL $1 -y
}

sudo apt-get update

INSTALL="sudo apt-get install "

#INSTALL PROGRAMS AND TOOLS
$INSTALL"build-essential" -y
$INSTALL"clang" -y
$INSTALL"python2.7" -y
$INSTALL"python3.4" -y
$INSTALL"gcc" -y
$INSTALL"bcc" -y
$INSTALL"cmake" -y
$INSTALL"i3" -y
$INSTALL"vim" -y
$INSTALL"terminator" -y
$INSTALL"zsh" -y
$INSTALL"ack-grep" -y
#set ack-grep to use the name ack
sudo dpkg-divert --local --divert /usr/bin/ack --rename --add /usr/bin/ack-grep
$INSTALL"firefox" -y
$INSTALL"curl" -y
$INSTALL"chromium-browser" -y
$INSTALL"ranger" -y
$INSTALL"arduino" -y
$INSTALL"cowsay" -y
$INSTALL"figlet" -y
$INSTALL"exuberant-ctags" -y
$INSTALL"colordiff" -y
$INSTALL"diffuse" -y
$INSTALL"source-highlight" -y

if [ "$1" = "-h" ]; then
    $INSTALL"nautilus-dropbox" -y
    $INSTALL"steam" -y
fi

#pip
$INSTALL"python-pip python-dev build-essential" -y
sudo pip install --upgrade pip
sudo pip install --upgrade virtualenv

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
