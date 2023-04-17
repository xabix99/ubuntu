#!/bin/bash
set -eu -o pipefail

sudo -n true
test $? -eq 0 || exit 1 "you should have sudo privilege to run this script"

read -p "Czy twoj system to ubuntu? " -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit 1
fi
printf %"$COLUMNS"s |tr " " "-"
echo Zmiana wygladu
printf %"$COLUMNS"s |tr " " "-"
sudo add-apt-repository ppa:papirus/papirus -y
gnome-shell-extension-tool -e user-themes
sudo cd /usr/share/themes
&& wget "https://github.com/dracula/gtk/archive/master.zip"
&& unzip gtk-master.zip && sudo rm gtk-master.zip
# Ustawienia wygląðu
gsettings set org.gnome.desktop.interface gtk-theme "gtk-master"
gsettings set org.gnome.desktop.wm.preferences theme "Yaru-purple-dark"
gsettings set org.gnome.desktop.interface icon-theme "Papirus-Dark"
# Dock na dole na srodku
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM
gsettings set org.gnome.shell.extensions.dash-to-dock show-apps-at-top true
gsettings set org.gnome.shell.extensions.dash-to-dock background-opacity 1.0
printf %"$COLUMNS"s |tr " " "-"
echo Aktualizowanie wszystkiego
printf %"$COLUMNS"s |tr " " "-"
sudo apt update
sudo apt install --fix-missing -y
sudo apt upgrade --allow-downgrades -y
sudo apt full-upgrade --allow-downgrades -y
printf %"$COLUMNS"s |tr " " "-"
echo Czyszczenie systemu
printf %"$COLUMNS"s |tr " " "-"
sudo apt install -f
sudo apt autoremove -y
sudo apt autoclean
sudo apt clean
printf %"$COLUMNS"s |tr " " "-"
echo Wszystko gotowe
printf %"$COLUMNS"s |tr " " "-"