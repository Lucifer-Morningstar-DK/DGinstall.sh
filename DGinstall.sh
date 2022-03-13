#! /bin/sh

echo -e "Debian GUI installation \vscript by \vDeepak_Rajasekaran@lucifer aka Lucifer-Morningstar-DK"
sleep 5
echo -e " Adding Required repositories.... "
sleep 2

sudo add-apt-repository ppa:danielrichter2007/grub-customizer
sudo sh -c 'echo " deb https://dl.winehq.org/wine-builds/debian/ bullseye main" >> /etc/apt/sources.list.d/wine.list'
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo dpkg --add-architecture i386

sudo apt-get update
sudo apt-get upgrade

echo -e "Starting Installation.... "

sudo apt-get install gnome-tweak-tool
sudo apt install snapd
sudo snap install core
sudo apt-get install grub-customizer
sudo apt install --install-recommends winehq-stable
sudo apt install winetricks
sudo apt install gnome-shell-extensions
sudo snap install vlc

sudo tasksel install desktop gnome-desktop
sudo tasksel install laptop
sudo systemctl set-default graphical.target

echo -e "Installation successful"
sleep 5
echo -e " Thanks for Choosing This Script"
sleep 2
echo -e "Rebooting System"
sudo systemctl reboot

