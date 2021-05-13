#! /usr/bin/env bash

echo "
***********************************************
php my admin install

sudo apt update
***********************************************
";

sudo add-apt-repository ppa:phpmyadmin/ppa
sudo apt update -y

echo "
***********************************************
sudo apt install phpmyadmin php-mbstring php-gettext -y
***********************************************
";
sudo apt install phpmyadmin php-mbstring -y
sudo phpenmod mbstring

echo "
***********************************************
sudo service apache2 restart
***********************************************
";
sudo service apache2 restart