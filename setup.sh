#!/bin/bash

#Update the actual system
sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade

#Ensure needed software is installed
sudo apt-get install vim 

if [ $1 -eq 'desktop' ]
then
  sudo apt install gnome-session gnome-terminal 
fi
