#!/bin/bash
sudo rm -rf /usr/share/themes/master.zip && sudo rm -rf /usr/share/themes/gtk-master
echo && echo && echo
printf %"$COLUMNS"s |tr " " "-"
echo Zmiana wygladu
printf %"$COLUMNS"s |tr " " "-"
echo && echo && echo
sudo apt install -y gnome-shell-extensions
sudo apt install -y gnome-tweaks
sudo apt install -y unzip
sudo apt install -y zip
sudo apt-get install papirus-icon-theme
cd /usr/share/themes
wget https://github.com/dracula/gtk/archive/master.zip
unzip master.zip && sudo rm -rf master.zip
sudo chmod -R 755 gtk-master
# Ustawienia wygląðu
gsettings set org.gnome.desktop.interface gtk-theme "gtk-master"
gsettings set org.gnome.desktop.wm.preferences theme "Yaru-purple-dark"
gsettings set org.gnome.desktop.interface icon-theme "Papirus-Dark"
# Dock settings
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM
gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode FIXED
gsettings set org.gnome.shell.extensions.dash-to-dock show-apps-at-top true
gsettings set org.gnome.shell.extensions.dash-to-dock background-opacity 1.0
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 32
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false
echo && echo && echo
printf %"$COLUMNS"s |tr " " "-"
echo Wszystko gotowe
printf %"$COLUMNS"s |tr " " "-"
echo && echo && echo