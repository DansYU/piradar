#!/bin/sh

# Michael Hirsch
# setups the environment for Raspberry Pi Radar

if ! uname -m | grep -q arm; then 
echo "this script is meant to be run on your Raspberry Pi"
fi

sudo apt-get install git gcc make
git clone https://github.com/F5OEO/rpitx
cd rpitx
sudo ./install.sh


while read r; do
    sudo apt-get install "python3-$r"
done < requirements.txt
