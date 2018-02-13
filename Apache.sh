sudo apt-get update
sudo apt-get install apache2
sudo apache2ctl configtest
sudo nano /etc/apache2/apache2.conf
# ServerName dominio_del_servidor_o_IP 
sudo apache2ctl configtest
sudo systemctl restart apache2

sudo nano /etc/apache2/apache2.conf
# <Directory /var/www>
#    AllowOverride All
#    Require all granted
sudo a2enmod rewrite
sudo apache2ctl configtest
sudo systemctl restart apache2

sudo nano /etc/apache2/mods-enabled/dir.conf
# <IfModule mod_dir.c>
#    DirectoryIndex index.php index.html index.cgi index.pl index.xhtml index.htm

sudo chown -R username:www-data /var/www/html