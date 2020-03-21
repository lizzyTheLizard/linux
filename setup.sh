#!/bin/bash

#Update the actual system
sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade

#Ensure needed software is installed
sudo apt-get install vim 



echo "$0"
echo "$1"

if [ "$1" == "desktop" ]
then
  sudo apt install gnome-session gnome-terminal 
fi
