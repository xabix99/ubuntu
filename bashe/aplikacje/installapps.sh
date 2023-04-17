#!/bin/bash
echo && echo && echo
printf %"$COLUMNS"s |tr " " "-"
echo Aktualizowanie systemu
printf %"$COLUMNS"s |tr " " "-"
echo && echo && echo
sudo apt-get update -y 
echo && echo && echo
printf %"$COLUMNS"s |tr " " "-"
echo Instalowanie aplikacji
printf %"$COLUMNS"s |tr " " "-"
echo && echo && echo
sudo apt install -y git
sudo apt install -y zsh
sudo apt install -y curl
sudo apt install -y dconf
sudo apt install -y wget
sudo apt install -y snapd
sudo apt install -y discord
sudo apt install -y libreoffice-writer
sudo apt install -y libreoffice-calc
# Brave Browser Install
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update && sudo apt install brave-browser -y
# Programowanie
sudo apt install -y nodejs
sudo apt install -y npm
sudo apt install -y gcc
# Visual Studio Code
sudo apt install software-properties-common apt-transport-https wget -y
sudo wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update -y && sudo apt install code
# Github Desktop
wget -qO - https://apt.packages.shiftkey.dev/gpg.key | gpg --dearmor | sudo tee /usr/share/keyrings/shiftkey-packages.gpg > /dev/null
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/shiftkey-packages.gpg] https://apt.packages.shiftkey.dev/ubuntu/ any main" > /etc/apt/sources.list.d/shiftkey-packages.list'
sudo apt update -y && sudo apt install github-desktop
git clone https://github.com/AdnanHodzic/auto-cpufreq.git
cd auto-cpufreq && sudo ./auto-cpufreq-installer -i
echo && echo && echo
printf %"$COLUMNS"s |tr " " "-"
echo Aktualizowanie pakietow
printf %"$COLUMNS"s |tr " " "-"
echo && echo && echo
sudo apt update
sudo apt install --fix-missing -y
sudo apt upgrade --allow-downgrades -y
sudo apt full-upgrade --allow-downgrades -y
echo && echo && echo
printf %"$COLUMNS"s |tr " " "-"
echo Finalizowanie instalacji
printf %"$COLUMNS"s |tr " " "-"
echo && echo && echo
sudo apt install -f
sudo apt autoremove -y
sudo apt autoclean
sudo apt clean
echo && echo && echo
printf %"$COLUMNS"s |tr " " "-"
echo Wszystko gotowe
printf %"$COLUMNS"s |tr " " "-"
echo && echo && echo