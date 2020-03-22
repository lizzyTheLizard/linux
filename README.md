# linux
Settings to set up linux VMs for me. Perform the following steps


## Setup VM
Get ubunut from
https://ubuntu.com/download/desktop

Create a new VM
Username: magraf, user autologin

## Setup GitHub
Create a new key with and outputs it. Store this key at https://github.com/settings/keys
```
 ssh-keygen -t rsa && cat /home/magraf/.ssh/id_rsa
```

Clone this repo 
```
git clone git@github.com:lizzyTheLizard/linux.git ~/Documents/linux
```

## Sync settings
Execute the sync
```
~/Documents/linux/setup.sh
```

Then reboot the system

## TODO
* most recent node
* headless chrome?
* Time settings
