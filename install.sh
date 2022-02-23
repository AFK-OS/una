#!/bin/bash

wget -qO - 'https://proget.hunterwittenborn.com/debian-feeds/makedeb.pub' | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/makedeb-archive-keyring.gpg &> /dev/null

echo 'deb [signed-by=/usr/share/keyrings/makedeb-archive-keyring.gpg arch=all] https://proget.hunterwittenborn.com/ makedeb main' | \
sudo tee /etc/apt/sources.list.d/makedeb.list

sudo apt-get update && sudo apt-get install makedeb

git clone https://mpr.makedeb.org/una-bin.git && cd una-bin
makedeb -si && cd .. && rm -rf una-bin

una update; una help