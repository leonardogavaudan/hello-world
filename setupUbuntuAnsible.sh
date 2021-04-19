#!/bin/bash

# Script must not be run with sudo or else ssh keys will be saved to /root

ssh-keygen -o -b 4096 -f home/$USER/.ssh/id_rsa -P ""
cat ~/.ssh/id_rsa.pub >> /home/$USER/.ssh/authorized_keys

sudo apt update
sudo apt install -y python3-pip
pip3 install pip --upgrade

pip3 install ansible
pip3 install winrm
pip3 install requests-credssp

export PATH=$PATH:~/.local/bin
