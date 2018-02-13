wget https://dl-ssl.google.com/dl/linux/direct/mod-pagespeed-stable_current_amd64.deb
sudo dpkg -i mod-pagespeed-*.deb
sudo apt-get -f install
rm mod-pagespeed-*.deb
service apache2 restart
nano /etc/apache2/mods-available/pagespeed.conf
# ModPagespeed on