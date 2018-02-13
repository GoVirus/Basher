openssl req -newkey rsa:2048 -nodes -keyout example.com.key -out example.com.csr
cat example.com.csr
cd /etc/apache2/sites-available
cp 000-default.conf 000-default.conf.orig
sudo vi 000-default.conf

# <VirtualHost *:80>
# <VirtualHost *:443>
# ServerName example.com
# SSLEngine on
# SSLCertificateFile /home/sammy/example.com.crt
# SSLCertificateKeyFile /home/sammy/example.com.key
# SSLCACertificateFile /home/sammy/intermediate.crt
# SSLCertificateChainFile /home/sammy/intermediate.crt

# <VirtualHost *:80>
   # ServerName example.com
   # Redirect permanent / https://example.com/

sudo a2enmod ssl
sudo service apache2 restart
