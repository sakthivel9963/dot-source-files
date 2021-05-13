#! /usr/bin/env bash

echo "
***********************************************
mysql-server install

sudo apt update
***********************************************
";
sudo apt update

echo "
***********************************************
sudo apt install -y mysql-server
***********************************************
";
sudo apt install -y mysql-server

echo "
***********************************************
sudo mysql
SELECT user,authentication_string,plugin,host FROM mysql.user;
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';
FLUSH PRIVILEGES;
SELECT user,authentication_string,plugin,host FROM mysql.user;
exit
***********************************************
";