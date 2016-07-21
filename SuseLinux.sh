function make_dir(){
    if [ ! -d $1 ]; then
        mkdir $1
    fi
}

#TODO: test this function
function install(){
    $INSTALL $1 -y
}

$INSTALL="sudo Zypper install"

#Install software
$INSTALL"-t pattern devel_basis"
$INSTALL"python"
$INSTALL"python3"
$INSTALL"llvm-clang"
$INSTALL"gcc"
$INSTALL"dev86" #bcc
$INSTALL"cmake"
$INSTALL"vim"
$INSTALL""
$INSTALL""
$INSTALL""
$INSTALL""
$INSTALL""
$INSTALL""
$INSTALL""
$INSTALL""
$INSTALL""
$INSTALL""
$INSTALL""
$INSTALL""
$INSTALL""
$INSTALL""
$INSTALL""
$INSTALL""
$INSTALL""
$INSTALL""
$INSTALL""

v
$INSTALL""
