#!/bin/bash

cd ~/Downloads

sudo apt-get update
sudo apt update

# google chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i ~/Downloads/google-chrome-stable_current_amd64.deb

# install development tools
sudo apt install git
sudo apt install curl
sudo apt install nodejs
sudo apt install python3
sudo apt install python3-pip

# docker
# sudo apt install apt-transport-https ca-certificates curl software-properties-common
# curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
# echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
# sudo apt install docker-ce docker-ce-cli containerd.io

# install misc tools
sudo apt install wget
sudo apt install neofetch
sudo apt install xclip
sudo apt install wkhtmltopdf
sudo apt install cmake
sudo apt install ffmpeg
sudo apt install scrot

# fun stuff
sudo apt install cmatrix
sudo apt install hollywood

# clean up downloaded stuff
rm ~/Downloads/*