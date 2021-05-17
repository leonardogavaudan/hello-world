#!/bin/bash


sudo -u nukkai ssh-keygen -o -b 4096 -f /home/nukkai/.ssh/id_rsa -P ""
cat /home/nukkai/.ssh/id_rsa.pub >> /home/nukkai/.ssh/authorized_keys

sudo apt update
sudo apt upgrade -y
sudo apt install -y python3-pip
pip3 install pip --upgrade

pip3 install ansible
pip3 install winrm
pip3 install requests-credssp

echo "export PATH=\$PATH:~/.local/bin" >> /home/nukkai/.bashrc
