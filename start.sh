#PLEASE NOTE: because you have this, I assume you have git installed. If not you will need to have git istalled before running this

#test if paramter 1 exists as a directory, if it does not then make it
function make_dir(){
    if [ ! -d $1 ]; then
        mkdir $1
    fi
}

INSTALL="sudo apt-get install "

#INSTALL PROGRAMS AND TOOLS
$INSTALL"build-essential -y"
$INSTALL"clang -y"
$INSTALL"python2.7 -y"
$INSTALL"python3.4 -y"
$INSTALL"gcc -y"
$INSTALL"bcc -y"
$INSTALL"cmake -y"
$INSTALL"vim -y"
$INSTALL"terminator -y"
$INSTALL"compiz compiz-core compiz-gnome compiz-plugins-default compizconfig-settings-manager -y"
$INSTALL"guake -y"
$INSTALL"zsh -y"
$INSTALL"dia -y"
$INSTALL"ack-grep"
#set ack-grep to use the name ack
sudo dpkg-divert --local --divert /usr/bin/ack --rename --add /usr/bin/ack-grep
$INSTALL"firefox -y"
$INSTALL"curl -y"
$INSTALL"chromium-browser -y"
$INSTALL"nautilus-dropbox -y"
$INSTALL"nemo"
$INSTALL"ranger -y"
$INSTALL"synapse -y"
$INSTALL"arduino -y"
$INSTALL"cowsay -y"
$INSTALL"figlet -y"
$INSTALL"steam -y"

#pip
$INSTALL"python-pip python-dev build-essential"
sudo pip install --upgrade pip
sudo pip install --upgrade virtualenv

#install how2
$install"install nodejs npm -y"
sudo ln -s /usr/bin/nodejs /usr/bin/node
npm install -g how2

#I always have these directories for organization. So if they are not made make them
mk_dir ~/Programs

mk_dir ~/Downloads

#isntall oh my zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

#AUTOMATICALLY SET UP RCs
#check to see if Documents exists:
mk_dir ~/Documents

git clone git@github.com:rhuard/RCs.git ~/Documents
chmod +x ~/Documents/RCs/firsttimesetup.sh
chmod +x ~/Documents/RCs/rcsetup.sh


~/Documents/RCs/firsttimesetup.sh

"sudo apt-get update && sudo apt-get upgrade -y"
#INFO FOR SETUP STUFF (Check List)
echo "TODO:"
echo "run dropbox and get that set that up"
echo "steam games"
echo "ad block and thumbnail zoom for browsers"
echo "set guake to run in start up"
echo "install latest android studio and idea-ide"
