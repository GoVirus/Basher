cd /tmp
curl -O https://wordpress.org/latest.tar.gz
tar xzvf latest.tar.gz
cp /tmp/wordpress/wp-config-sample.php /tmp/wordpress/wp-config.php
mkdir /tmp/wordpress/wp-content/upgrade
sudo cp -a /tmp/wordpress/. /var/www/html
sudo chown -R data:www-data /var/www/html
sudo find /var/www/html/wp-content -type d -exec chmod 755 {} \;
sudo chmod g+w /var/www/html/wp-content
sudo chmod -R g+w /var/www/html/wp-content/themes
sudo chmod -R g+w /var/www/html/wp-content/plugins

cd /var/www/html
curl -s https://api.wordpress.org/secret-key/1.1/salt/
sudo nano /var/www/html/wp-config.php

ssh-keygen -t rsa -b 4096
# /home/data/.ssh/wp_rsa

sudo chmod 700 ~/.ssh/
sudo chown data:data ~/.ssh/
sudo chown data:data ~/.ssh/authorized_keys

sudo chmod -R 644 ~/.ssh/
cat ~/.ssh/wp_rsa.pub >> ~/.ssh/authorized_keys
sudo nano /var/www/html/wp-config.php

# Securing SSH Download
define('FTP_PUBKEY','/home/data/.ssh/wp_rsa.pub');
define('FTP_PRIKEY','/home/data/.ssh/wp_rsa');
define('FTP_USER','data');
define('FTP_PASS','');
define('FTP_HOST','127.0.0.1:22');

define('WP_HOME','http://domain.com');
define('WP_SITEURL','http://domain.com');

sudo nano /etc/apache2/sites-enabled/000-default.conf
Redirect permanent / https://www.domain.com/