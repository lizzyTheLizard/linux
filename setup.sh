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

#Update the actual system
sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade

#Install base software
sudo apt-get -y install \
  curl vim chromium-browser firefox \
  git vim meld \
  docker docker-compose \
  default-jdk golang-1.14 nodejs python3-venv \
  intellij-idea-community code

## Setup GitHub
[[ -f ~/.ssh/id_rsa ]] || ssh-keygen -t rsa -q -f ~/.ssh/id_rsa -N ""
cat ~/.ssh/id_rsa.pub
echo "Copy this Key to GITHUUB and then execute"
echo "git clone git@github.com:lizzyTheLizard/linux.git ~/Documents/linux &&  cd ~/Documents/linux/ && ./sync.sh"
