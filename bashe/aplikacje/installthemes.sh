#!/bin/bash
echo
echo
echo
echo
printf %"$COLUMNS"s |tr " " "-"
echo Zmiana wygladu
printf %"$COLUMNS"s |tr " " "-"
echo
echo
echo
echo
sudo apt install -y dconf
sudo apt install -y gnome-shell-extensions
sudo apt install -y gnome-tweaks
sudo apt install -y unzip
sudo apt install -y zip
gnome-shell-extension-tool -e user-themes
sudo add-apt-repository ppa:papirus/papirus -y
cd /usr/share/themes
wget "https://github.com/dracula/gtk/archive/master.zip"
unzip master.zip && sudo rm master.zip
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