sudo apt-get install php7.0 php7.0-mysql php7.0-mbstring php7.0-mcrypt php7.0-xml php7.0-xmlrpc php7.0-curl php7.0-zip php7.0-gd php7.0-cli libapache2-mod-php
sudo nano /etc/php/7.0/apache2/php.ini 
# short_open_tag = On
service apache2 restart