#!/bin/bash

wget -qO - 'https://proget.makedeb.org/debian-feeds/makedeb.pub' | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/makedeb-archive-keyring.gpg &> /dev/null

echo 'deb [signed-by=/usr/share/keyrings/makedeb-archive-keyring.gpg arch=all] https://proget.makedeb.org makedeb main' | \
sudo tee /etc/apt/sources.list.d/makedeb.list

sudo apt-get update && sudo apt-get install makedeb

git clone https://github.com/AFK-OS/una && cd una

./una update; ./una install una-bin

una help