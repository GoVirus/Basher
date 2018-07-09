sudo apt-get install curl git unzip
cd ~
curl -sS https://getcomposer.org/installer -o composer-setup.php
# SHA384 https://composer.github.io/pubkeys.html
php -r "if (hash_file('SHA384', 'composer-setup.php') === 'REPLACE_HERE_SHA384') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
# Installer verified
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
cd ~ 
rm composer-setup.php

