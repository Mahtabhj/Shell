#!/bin/bash

sudo apt-get update && upgrade -y

echo "" | sudo add-apt-repository ppa:linuxuprising/java

sudo apt update
sudo apt install oracle-java17-installer -y
sudo apt install oracle-java17-set-default


wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -

sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

sudo apt update

sudo apt install jenkins -y

sudo systemctl start jenkins

