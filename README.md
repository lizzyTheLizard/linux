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
  sudo apt-get -y install vim git docker docker-compose default-jdk evince curl chromium-browser && \
  sudo snap install --classic code && \
  sudo snap install --classic intellij-idea-community && \
  sudo snap install postman && \
  sudo snap refresh
```

## Prepare user settings
Download setting files
```
wget --no-cache https://raw.githubusercontent.com/lizzyTheLizard/linux/master/.bash_aliases -O ~/.bash_aliases && \ 
  wget --no-cache https://raw.githubusercontent.com/lizzyTheLizard/linux/master/.vimrc -O ~/.vimrc && \
  wget --no-cache https://raw.githubusercontent.com/lizzyTheLizard/linux/master/.inputrc -O ~/.inputrc 
```

Configure gnome
```
gsettings set org.gnome.desktop.screensaver lock-enabled false && \
  gsettings set org.gnome.desktop.lockdown disable-lock-screen true && \
  gsettings set org.gnome.shell favorite-apps "['firefox.desktop', 'org.gnome.Nautilus.desktop', 'org.gnome.Terminal.desktop', 'intellij-idea-community_intellij-idea-community.desktop', 'postman_postman.desktop', 'code_code.desktop', 'chromium_chromium.desktop']"
```

Allow use to use docker without sudo
```
sudo gpasswd -a magraf docker && newgrp docker
```

Setup github
```
git config --global user.name "lizzyTheLizard" && \
git config --global user.email "14069652+lizzyTheLizard@users.noreply.github.com"
```

Create a new key with and outputs it. Store this key at https://github.com/settings/keys
```
 ssh-keygen -t rsa && cat /home/magraf/.ssh/id_rsa
```

Now checkout a repo
```
git clone git@github.com:lizzyTheLizard/linux.git Documents/linux
```

# config
* most recent node
* headless chrome?
