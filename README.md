# linux
Settings to set up linux VMs for me. Perform the following steps


## Setup VM
Get ubunut from
https://ubuntu.com/download/desktop

Create a new VM
Username: magraf, user autologin

## Install needed software
Execute
```
sudo apt-get update && sudo apt-get -y upgrade && sudo apt-get -y dist-upgrade && \
  sudo apt-get -y install vim git docker docker-compose default-jdk evince curl && \
  sudo snap install --classic code && \
  sudo snap install --classic intellij-idea-community && \
  sudo snap install postman && \
  sudo snap refresh
```

## Prepare user settings
Download settings
```
sudo wget --no-cache https://raw.githubusercontent.com/lizzyTheLizard/linux/master/.bash_aliases -O ~/.bash_aliases && \ 
  sudo wget --no-cache https://raw.githubusercontent.com/lizzyTheLizard/linux/master/.vimrc -O ~/.vimrc && \
  sudo wget --no-cache https://raw.githubusercontent.com/lizzyTheLizard/linux/master/.inputrc -O ~/.inputrc 
```

Disable lock screen
```
sudo gsettings set org.gnome.desktop.screensaver lock-enabled false && \
  sudo gsettings set org.gnome.desktop.lockdown disable-lock-screen true
```


# config
* Check for no login and no lock
* favorites
* setup github
* most recent node
* headless chrome?
