#! /usr/bin/env bash

echo "
***********************************************
Apache install and config in firewall

sudo apt update
***********************************************
";
sudo apt update

echo "
***********************************************
sudo apt install -y apache2
***********************************************
";
sudo apt install -y apache2

echo "
***********************************************
sudo ufw allow 'Apache'
***********************************************
";
sudo ufw allow 'Apache'

echo "
***********************************************
sudo ufw status
***********************************************
";
sudo ufw status

echo "
***********************************************
sudo systemctl status apache2
***********************************************
";
sudo systemctl status apache2

echo "
***********************************************
http://localhost
***********************************************
";
http://localhost

echo "
***********************************************
sudo chmod 777 -R /var/www/html/
***********************************************
";
sudo chmod 777 -R /var/www/html/