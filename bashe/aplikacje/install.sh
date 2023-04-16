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

echo Aktualizowanie systemu
sudo apt-get update -y 


echo Instalowanie aplikacji
sudo apt install -y git
sudo apt install -y zsh
sudo apt install -y curl
sudo apt install -y zip
sudo apt install -y unzip
sudo apt install -y wget
sudo apt install -y snapd
sudo apt install -y discord
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt-get update -y
sudo apt install brave-browser -y
sudo apt install -y gnome-shell-extensions
sudo apt install -y gnome-tweaks 


echo Aktualizowanie pakietow
sudo apt-get upgrade -y