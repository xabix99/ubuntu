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
sudo apt-get install -y papirus-icon-theme
cd /usr/share/themes
wget https://github.com/dracula/gtk/archive/master.zip
unzip master.zip && sudo rm -rf master.zip
sudo chmod -R 755 gtk-master
# Ustawienia wygląðu
gnome-extensions enable user-theme@gnome-shell-extensions.gcampax.github.com
gsettings set org.gnome.desktop.interface gtk-theme "gtk-master"
gsettings set org.gnome.shell.extensions.user-theme name Yaru-purple-dark
gsettings set org.gnome.desktop.interface icon-theme "Papirus-Dark"
gnome-extensions disable ding@rastersoft.com
# Dock settings
gsettings set org.gnome.shell.extensions.dash-to-dock show-trash false
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


gsettings set org.gnome.shell.extensions.desktop-icons show-home false
