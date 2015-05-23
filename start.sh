#PLEASE NOTE: because you have this, I assume you have git installed. If not you will need to have git istalled before running this

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
$INSTALL"firefox -y"
$INSTALL"chromium-browser -y"
$INSTALL"nautilus-dropbox -y"
$INSTALL"arduino -y"
$INSTALL"steam -y"

#I always have these directories for organization. So if they are not made make them
if [ ! -d ~/Programs ]; then
    mkdir ~/Programs
fi

if [ ! -d ~/Downloads ]; then
    mkdir ~/Downloads
fi

firfox https://dl.google.com/dl/android/studio/ide-zips/1.2.1.1/android-studio-ide-141.1903250-linux.zip
cp ~/Downloads/android-studio-ide-141.1903250-linux.zip ~/Programs/android-studio.zip
unzip ~/Programs/android-studio.zip android-studo
chmod +x ~/Programs/android-studio/bin/studio.sh

firefox http://sourceforge.net/projects/violet/files/violetumleditor/2.1.0/violetumleditor-2.1.0.jar/download
cp ~/Downloads/violetumleditor-2.1.o.jar ~/Programs/violetuml.jar

firefox https://download.jetbrains.com/idea/ideaIC-14.1.2.tar.gz
cp ~Downloads/ideaIC-14.1.2.tar.gz ~/Programs/ideaIC-14.1.2.tar.gz
tar -xfz ideaIC-14.1.2.tar.gz idea-ide idea-ide
chmod +x ~/Programs/idea-ide/bin/idea.sh

cp commands/android-ide /usr/local/sbin
cp commands/idea-ide /usr/local/sbin
cp commands/violetunl /usr/local/sbin

rm -rf ~/Programs/*.zip
rm -rf ~/Programs/*.tar.gz

#isntall oh my zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
#AUTOMATICALLY SET UP RCs
#check to see if Documents exists:
if [ ! -d ~/Documents ]; then
    mkdir ~/Documents #if necessary make it
fi

git clone git@github.com:RHuard/RCs.git ~/Documents
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
