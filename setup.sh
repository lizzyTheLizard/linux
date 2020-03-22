#!/bin/bash

#Update the actual system
sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade

#Ensure needed software is installed
sudo apt-get -y install vim git meld docker docker-compose default-jdk evince curl chromium-browser
sudo snap install --classic code
sudo snap install --classic intellij-idea-community
sudo snap install postman
sudo snap refresh

#Get user settings
cp .bash_aliases ~/.bash_aliases
cp .vimrc ~/.vimrc
cp .inputrc ~/.inputrc 

#Configure gnome
gsettings set org.gnome.desktop.screensaver lock-enabled false
gsettings set org.gnome.desktop.lockdown disable-lock-screen true
gsettings set org.gnome.shell favorite-apps "['firefox.desktop', 'org.gnome.Nautilus.desktop', 'org.gnome.Terminal.desktop', 'intellij-idea-community_intellij-idea-community.desktop', 'postman_postman.desktop', 'code_code.desktop', 'chromium_chromium.desktop']"

#Setup github
git config --global user.name "lizzyTheLizard"
git config --global user.email "14069652+lizzyTheLizard@users.noreply.github.com"
git clone git@github.com:lizzyTheLizard/linux.git ~/Documents/linux

#Allow docker without password
sudo gpasswd -a magraf docker
newgrp docker

