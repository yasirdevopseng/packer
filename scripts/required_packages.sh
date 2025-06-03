#!/bin/bash
#
sudo apt update -y
sudo apt install nginx -y
sudo apt install docker.io -y


sudo echo"<enter public key here>" >> /home/ubuntu/.ssh/authorized_keys
