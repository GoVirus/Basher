chmod -R gu+w storage
chmod -R guo+w storage
sudo nano /etc/apache2/apache2.conf

# AllowOverride All

sudo a2enmod rewrite

composer dumpautoload
php artisan cache:clear
php artisan clear-compiled

sudo chmod -R 755 /var/www/html/
chmod -R data:www-data /var/www/html
find /var/www -type d -exec chmod 755 {} \;
