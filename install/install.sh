#!/usr/bin/env bash

echo "
***********************************************
Update and Upgrade all the install package
***********************************************
";
sudo apt update
sudo apt upgrade -y

echo "
***********************************************
Typeahead for ubuntu
***********************************************
";
# sudo add-apt-repository ppa:lubomir-brindza/nautilus-typeahead
# sudo apt dist-upgrade
# nautilus -q

echo "
***********************************************
Maximus and minimize on icon click
***********************************************
";
# gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'

echo "
***********************************************
Python and pip packages
***********************************************
";
sudo apt install -y python3
sudo apt install -y python3-pip
sudo apt install -y python3-pygments
sudo apt install -y python3-venv 
pip install powerline-shell
pip3 install virtualenv

echo "
***********************************************
Basic System Tools
***********************************************
";
sudo apt install -y terminator gnome-tweak-tool qbittorrent dconf-editor curl wget tor git gimp vlc ssh gedit-plugins gufw tmux network-manager-openvpn openvpn network-manager-openvpn-gnome htop mlocate filezilla gparted ubuntu-restricted-extras ffmpeg fd-find

sudo apt install -y libgnome2-0
sudo apt install -y libmpv1
sudo apt install -y fonts-powerline fonts-font-awesome
sudo apt install -y net-tools
sudo apt install -y gcc
sudo apt install -y g++
sudo apt install -y make
sudo apt install -y libqt5opengl5
sudo apt install -y rtorrent
sudo apt install -y libswitch-perl
sudo apt install -y cmake
sudo apt install -y cmake-qt-gui
sudo apt install -y tree
sudo apt install -y libgnome2-bin
sudo apt install -y macchanger
sudo apt install -y virtualenv 

echo "
***********************************************
direnv package
***********************************************
";
curl -sfL https://direnv.net/install.sh | bash
sudo apt install -y direnv

echo "
***********************************************
bat package
***********************************************
";
sudo apt install -y bat
mkdir -p ~/.local/bin
ln -s /usr/bin/batcat ~/.local/bin/bat

echo "
***********************************************
gud package
***********************************************
";
wget -O gdu.tgz https://github.com/dundee/gdu/releases/latest/download/gdu_linux_amd64.tgz
tar xf gdu.tgz
sudo mv gdu_linux_amd64 /usr/local/bin/gdu
gdu --version

echo "
***********************************************
lsd package
***********************************************
";
download lsd from "https://github.com/Peltoche/lsd"
sudo dpkg -i "download package name" #eg: lsd_0.20.1_amd64.deb
# create .fonts folder for the local user config fonts 
mkdir ~/.fonts
move all the download fonts to "~/.fonts" folder


echo "
***********************************************
tor browser
***********************************************
";
# sudo add-apt-repository ppa:micahflee/ppa
# sudo apt update 
# sudo apt install -y torbrowser-launcher

echo "
***********************************************
Snap Package
***********************************************
";
# sudo snap install spotify
# sudo snap install slack --classic
# sudo snap install discord --classic

echo "
***********************************************
Vivaldi
***********************************************
";
# wget -qO- http://repo.vivaldi.com/stable/linux_signing_key.pub | sudo apt-key add -
# sudo add-apt-repository "deb [arch=i386,amd64] http://repo.vivaldi.com/stable/deb/ stable main"
# sudo apt update
# sudo apt install -y vivaldi-stable

echo "
***********************************************
Google Chrome
***********************************************
";
# sudo apt-get install -y libxss1 libappindicator1 libindicator7
# wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
# sudo apt install -y ./google-chrome*.deb

echo "
***********************************************
Brave Browser
***********************************************
";
# sudo apt install -y apt-transport-https curl
# curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
# source /etc/os-release
# echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ $UBUNTU_CODENAME main" | sudo tee /etc/apt/sources.list.d/brave-browser-release-${UBUNTU_CODENAME}.list
# sudo apt update
# sudo apt install -y brave-browser

echo "
***********************************************
WhatsApp
***********************************************
";
# wget https://www.thefanclub.co.za/sites/default/files/public/downloads/whatsapp-webapp_1.0_all.deb
# sudo apt install -y ./whatsapp-webapp*.deb

echo "
***********************************************
Vs code
***********************************************
";
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt update
sudo apt install -y code

echo "
***********************************************
Sublime text
***********************************************
";
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg
sudo apt install -y apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt install -y sublime-text


echo "
***********************************************
Keep notes
***********************************************
";
# sudo apt install -y python python-gtk2 python-glade2 libgtk2.0-dev libsqlite3-0
# sudo apt -y install python-gnome2-extras aspell aspell-en
# wget http://keepnote.org/download/keepnote_0.7.8-1_all.deb
# sudo apt install -y ./keepnote*.deb

echo "
***********************************************
Shutter
***********************************************
";
sudo add-apt-repository ppa:linuxuprising/shutter
sudo apt update
sudo apt install -y shutter

echo "
***********************************************
ulancher
***********************************************
";
sudo add-apt-repository ppa:agornostal/ulauncher
sudo apt update
sudo apt install -y ulauncher

echo "
***********************************************
Adobe flash plugin
***********************************************
";
# sudo add-apt-repository "deb http://archive.canonical.com/ubuntu `lsb_release -cs` partner"
# sudo apt update
# sudo apt install -y adobe-flashplugin

echo "
***********************************************
Virtual Box
***********************************************
";
# wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
# sudo apt update
# sudo apt install -y virtualbox 

echo "
***********************************************
multiload indicator
***********************************************
";
# sudo add-apt-repository -y ppa:indicator-multiload/stable-daily
# sudo apt install -y indicator-multiload

echo "
***********************************************
albert
***********************************************
";
# wget https://download.opensuse.org/repositories/home:/manuelschneid3r/xUbuntu_19.04/amd64/albert_0.16.1_amd64.deb
# sudo apt install ./albert*.deb

echo "
***********************************************
dbeaver
***********************************************
";
# wget -O - https://dbeaver.io/debs/dbeaver.gpg.key | sudo apt-key add -
# echo "deb https://dbeaver.io/debs/dbeaver-ce /" | sudo tee /etc/apt/sources.list.d/dbeaver.list
# sudo apt update
# sudo apt install -y dbeaver-ce

echo "
***********************************************
obs 
***********************************************
";
# sudo apt install -y ffmpeg
# sudo add-apt-repository ppa:obsproject/obs-studio
# sudo apt update
# sudo apt install -y obs-studio

echo "
***********************************************
postgresql
***********************************************
";
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
sudo apt update
sudo apt install -y postgresql postgresql-contrib

echo "
***********************************************
MongoDb
***********************************************
";
# sudo apt install -y mongodb
# sudo systemctl enable mongodb
# sudo systemctl disable mongodb
echo "
***********************************************
insomnia
***********************************************
";
echo "deb [trusted=yes arch=amd64] https://download.konghq.com/insomnia-ubuntu/ default all" | sudo tee -a /etc/apt/sources.list.d/insomnia.list
sudo apt update
sudo apt install -y insomnia

echo "
***********************************************
git default setting global user
***********************************************
";
# git config --global user.email ""
# git config --global user.name ""

echo "
***********************************************
git default setting specific project
***********************************************
";
# git config user.email ""
# git config user.name ""


echo "
***********************************************
Youtube-dl
***********************************************
";
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl

echo "
***********************************************
Config youtube-dl output directory

mkdir -p ~/.config/youtube-dl
touch ~/.config/youtube-dl/config

In the config file add the following

-o ~/Downloads/Youtube/%(title)s.%(ext)s

***********************************************
";

echo "
***********************************************
nano syntax highlight setting
***********************************************
";
curl https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh | sh

echo "
***********************************************
install software from gnome extensions
***********************************************
";
# sudo apt install -y gnome-shell-extensions
# sudo apt install -y chrome-gnome-shell

echo "
***********************************************
Install gnome shell extensions

1.netspeed
2.screenshot location
3.Audio Output Switcher

***********************************************
";

echo "
ibus-setup
remove keyboard shortcut for the emoji
"

echo "
echo <yourpassword> | sudo -S macchanger -r <ethernetportid>
"

echo "
Disable screenshot sound : 

sudo mv /usr/share/sounds/freedesktop/stereo/screen-capture.oga ./disable-screen-capture.oga

"