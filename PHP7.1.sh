sudo apt-get install software-properties-common
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo add-apt-repository ppa:ondrej/apache2
sudo apt-get install php7.1
 
sudo apt-get install php7.1-mysql
sudo apt-get install php7.1-mbstring 
sudo apt-get install php7.1-mcrypt 
sudo apt-get install php7.1-xml 
sudo apt-get install php7.1-xmlrpc 
sudo apt-get install php7.1-curl 
sudo apt-get install php7.1-zip
sudo apt-get install php7.1-gd 
sudo apt-get install php7.1-cli 
sudo apt-get install php7.1-cli 
sudo apt-get install php7.1-common 
sudo apt-get install php7.1-json 
sudo apt-get install php7.1-opcache 
sudo apt-get install php7.1-ssh
sudo apt-get install php7.1-fpm
sudo apt-get install php7.1-intl 
sudo apt-get install php-pear
sudo apt-get install php-imagick
sudo apt-get install php-memcache
sudo apt-get install php-gettext
sudo apt-get install php7.1-imap
sudo apt-get install php7.1-pspell
sudo apt-get install php7.1-recode
sudo apt-get install php7.1-tidy

sudo apt-get install libapache2-mod-php7.1

sudo a2enmod proxy_fcgi setenvif
sudo a2enconf php7.1-fpm

sudo nano /etc/php/7.1/cli/php.ini
sudo service apache2 restart

php --ini |grep Loaded
