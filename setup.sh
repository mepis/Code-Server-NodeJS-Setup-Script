#! /bin/bash
echo "####################"
echo "Checking for and applying updates"
echo "####################"
sudo apt update
sudo apt upgrade

echo "####################"
echo "Installing Node.js V16"
echo "####################"
cd ~
curl -sL https://deb.nodesource.com/setup_16.x -o /tmp/nodesource_setup.sh
sudo bash /tmp/nodesource_setup.sh
sudo apt install nodejs

echo "####################"
echo "Installing Yarn"
echo "####################"
npm install --global yarn

echo "####################"
echo "Installing Redis"
echo "####################"
sudo apt install redis-server
sudo systemctl status redis

echo "####################"
echo "Done"
echo "####################"
echo " "
echo " Node version: "
node -v
echo " Reddis version: "
redis-server --version