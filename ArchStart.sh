INSTALL="sudo pacman -S "

# right now all my laptops have built in intel chips, need to expand/add options for different platforms
$INSTALL base-devel \
python \
python-pip \
mesa \
lib32-mesa \
vulkan-intel \
xorg-server \
lightdm \
plasma-desktop \
i3 \
vivaldi-stable \
firefox \
terminator \
tmux \
ack \
ranger \
vim \
ctags \
aspell-en \
dictd \
dict-moby-thesaurus \

$HOME/NewStartup/Common.sh
