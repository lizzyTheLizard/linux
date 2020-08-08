#!/bin/bash

# Add additgional repos
echo "Add intelliJ Repo"
sudo apt-add-repository -y ppa:mmk2410/intellij-idea
echo "Add NodeJS Repo"
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
echo "Add VSCODE Repo"
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get -y install apt-transport-https
echo "If everything worked fine press any key to continue"
read

#Update the actual system
sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade

#Install base software
sudo apt-get -y install \
  curl vim chromium-browser firefox \
  git vim meld \
  docker docker-compose default-jdk golang-1.14 nodejs \
  intellij-idea-community

## Setup GitHub
ssh-keygen -t rsa && cat /home/magraf/.ssh/id_rsa
echo "Copy this Key to GITHUUB and then execute"
echo "git clone git@github.com:lizzyTheLizard/linux.git ~/Documents/linux && ~/Documents/linux/sync.sh"
