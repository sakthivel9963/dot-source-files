#! /usr/bin/env bash

echo "
***********************************************
nipe proxy setup
***********************************************
";
sudo cpan install Config::Simple module
cd ~/Documents
git clone https://github.com/GouveaHeitor/nipe
cd nipe
chmod +x setup.sh
./setup.sh

echo "
***********************************************
nipe example commands :

sudo perl nipe.pl install
sudo perl nipe.pl start
sudo perl nipe.pl stop
sudo perl nipe.pl restart
sudo perl nipe.pl status

***********************************************
";