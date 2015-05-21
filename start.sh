#PLEASE NOTE: because you have this, I assume you have git installed. If not you will need to have git istalled before running this

INSTALL="sudo apt-get install "

#INSTALL PROGRAMS AND TOOLS
$INSTALL"vim"
$INSTALL"terminator"
$INSTALL"compiz compiz-core compiz-gnome compiz-plugins-default compizconfig-settings-manager"
$INSTALL"guake"
$INSTALL"firefox"
$INSTALL"chromium-browser"
$INSTALL"dropbox"
$INSTALL"arduino"
$INSTALL"steam"

if [ ! -d ~/Programs ]; then
    mkdir ~/Programs
fi

if [ ! -d ~/Downloads ]; then
    mkdir ~/Downloads
fi

firefox https://dl.google.com/dl/android/studio/ide-zips/1.2.1.1/android-studio-ide-141.1903250-linux.zip
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

#AUTOMATICALLY SET UP RCs
#check to see if Documents exists:
if [ ! -d ~/Documents ]; then
    mkdir ~/Documents
fi

git clone git@github.com:RHuard/RCs.git ~/Documents
chmod ~/Documents/RCs/firsttimesetup.sh
chmod ~/Documents/RCs/rcsetup.sh


~/Documents/RCs/firsttimesetup.sh

#INFO FOR SETUP STUFF (Check List)
echo "TODO:"
echo "run dropbox and get that set that up"
echo "steam games"
echo "add block and thumbnail zoom for browsers"
echo "set guake to run in start up"
echo "make sure anroid studio, idea idea and violetuml are updated versions"
