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
$INSTALL"ranger -y"
$INSTALL"arduino -y"
$INSTALL"cowsay -y"
$INSTALL"synapse -y"
$INSTALL"figlet -y"
$INSTALL"steam -y"

#I always have these directories for organization. So if they are not made make them
mk_dir ~/Programs

mk_dir ~/Downloads

curl https://dl.google.com/dl/android/studio/ide-zips/1.2.1.1/android-studio-ide-141.1903250-linux.zip
cp ~/Downloads/android-studio-ide-141.1903250-linux.zip ~/Programs/android-studio.zip
unzip ~/Programs/android-studio.zip android-studo
chmod +x ~/Programs/android-studio/bin/studio.sh

curl https://download.jetbrains.com/idea/ideaIC-14.1.2.tar.gz
cp ~Downloads/ideaIC-14.1.2.tar.gz ~/Programs/ideaIC-14.1.2.tar.gz
tar -xfz ideaIC-14.1.2.tar.gz idea-ide idea-ide
chmod +x ~/Programs/idea-ide/bin/idea.sh

#set up commands
chmod +x ./commands/android-ide
sudo cp commands/android-ide /usr/local/sbin/android-ide
chmod +x ./commands/idea-ide
sudo cp commands/idea-ide /usr/local/sbin/idea-ide
chmod +x ./commands/clock
sudo cp commands/clock /usr/local/sbin/clock

#clean up idea setup
rm -rf ~/Programs/*.zip
rm -rf ~/Programs/*.tar.gz

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
echo "make sure android studio, idea idea and violetuml are updated versions"
