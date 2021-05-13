#! /usr/bin/env bash

echo "
***********************************************
php install

sudo apt update
***********************************************
";
sudo apt update

echo "
***********************************************
sudo apt install -y php libapache2-mod-php php-mysql
***********************************************
";
sudo apt install -y php libapache2-mod-php php-mysql

echo "
***********************************************
sudo nano /etc/apache2/mods-enabled/dir.conf

It will look like this:
<IfModule mod_dir.c>
    DirectoryIndex index.html index.cgi index.pl index.php index.xhtml index.htm
</IfModule>

Move the PHP index file (highlighted above) to the first position after the DirectoryIndex specification, like this:
<IfModule mod_dir.c>
    DirectoryIndex index.php index.html index.cgi index.pl index.xhtml index.htm
</IfModule>
***********************************************
";

echo "
***********************************************
sudo service apache2 restart
sudo apt install -y php-cli
***********************************************
";

echo "
***********************************************
php composer

curl -sS https://getcomposer.org/installer |php

sudo mv composer.phar /usr/local/bin/composer

***********************************************
";
curl -sS https://getcomposer.org/installer |php
sudo mv composer.phar /usr/local/bin/composer