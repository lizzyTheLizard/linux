#!/bin/bash

#Update the actual system
sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade

#Ensure needed software is installed
sudo apt-get -y install vim git

if [ "$1" == "desktop" ]
then
  sudo apt install -y gnome-session gnome-terminal 
fi
