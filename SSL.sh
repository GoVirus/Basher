openssl req -newkey rsa:2048 -nodes -keyout domain.com.key -out domain.com.csr
cat domain.com.csr

# Your PositiveSSL Wildcard Certificate - STAR_domain_com.crt
# Your Apache "bundle" file - STAR_domain_com.ca-bundle

sudo chmod 664 /etc/ssl/private/domain.com.key
sudo chown www-data:www-data /etc/ssl/private/domain.com.key

sudo chmod 666 /etc/ssl/certs/STAR_domain_com.ca-bundle
sudo chown www-data:www-data /etc/ssl/certs/STAR_domain_com.ca-bundle

sudo chmod 666 /etc/ssl/certs/STAR_domain_com.crt
sudo chown www-data:www-data /etc/ssl/certs/STAR_domain_com.crt

unzip STAR_domain_com.zip

sudo openssl x509 -noout -modulus -in STAR_domain_com.crt | openssl md5
sudo openssl rsa -noout -modulus -in domain.com.key | openssl md5

sudo mv STAR_domain_com.crt /etc/ssl/certs/
sudo mv STAR_domain_com.ca-bundle /etc/ssl/certs/
sudo mv domain.com.key /etc/ssl/private/
sudo mv origin-pull-ca.pem /etc/ssl/certs/

sudo a2enmod ssl
sudo nano /etc/apache2/mods-enabled/ssl.conf

``` 
SSLHonorCipherOrder     on
SSLProtocol             all -SSLv2 -SSLv3
SSLCipherSuite          ECDHE-ECDSA-AES256-GCM-SHA384:ECDHE-RSA-AES256-GCM-SHA384:ECDHE-ECDSA-CHACHA20-POLY1305:ECDHE-RSA-CHACHA20-POLY1305:ECDHE-ECDSA-AES128-GCM-SHA256:ECDHE-RSA-AES128-GCM-SHA256:ECDHE-ECDSA-AES256-SHA384:ECDHE-RSA-AES256-SHA384:ECDHE-ECDSA-AES128-SHA256:ECDHE-RSA-AES128-SHA256

# Modern Configuration
SSLCompression          off
SSLSessionTickets       off

# OCSP Stapling
SSLUseStapling          on
SSLStaplingResponderTimeout 5
SSLStaplingReturnResponderErrors off
SSLStaplingCache        shmcb:/var/run/ocsp(128000)

``` 

sudo a2enmod headers
sudo nano /etc/apache2/sites-enabled/000-default.conf

```

<VirtualHost *:80>
	ServerName www.domain.com
	Redirect permanent / https://www.domain.com/
</VirtualHost>

<VirtualHost *:443>
	ServerName www.domain.com
	SSLEngine on
	SSLCertificateFile      /etc/ssl/certs/STAR_domain_com.crt
    SSLCACertificateFile 	/etc/ssl/certs/STAR_domain_com.ca-bundle
    SSLCertificateKeyFile   /etc/ssl/private/domain.com.key

    Header always set Strict-Transport-Security "max-age=15768000"
</VirtualHost>

```

sudo service apache2 restart

# Remove Passphrase
openssl rsa -in domain.com.key -out domainnew.com.key

# Verifying that a Private Key Matches a Certificate
sudo openssl x509 -noout -text -in /etc/ssl/certs/STAR_domain_com.crt
sudo openssl rsa -noout -text -in /etc/ssl/private/domain.com.key

sudo openssl x509 -noout -modulus -in /etc/ssl/certs/STAR_domain_com.crt | openssl md5 ;\
sudo openssl rsa -noout -modulus -in /etc/ssl/private/domain.com.key | openssl md5

(sudo openssl x509 -noout -modulus -in /etc/ssl/certs/STAR_domain_com.crt | openssl md5 ;\
 sudo openssl rsa -noout -modulus -in /etc/ssl/private/domain.com.key | openssl md5) | uniq

openssl req -noout -modulus -in domain.com.csr | openssl md5

# Turn a X509 Certificate in to a Certificate Signing Request
openssl x509 -x509toreq -in domain.com.crt -out domain.com.csr -signkey domain.com.key

# Export PFX to Other Server
openssl pkcs12 -export -out domain.com.pfx -inkey domain.com.key -in STAR_domain_com.crt -certfile STAR_domain_com.ca-bundle
openssl pkcs12 -in domain.com.pfx -out domain.com.key -nodes
# Verify a Certificate
openssl verify -CAfile STAR_domain_com.crt www.domain.com.crt

# Test SSL 
openssl s_client -CApath /etc/ssl/certs/ -connect domain.com:443

# Test File Open By User
sudo -H -u www-data bash -c 'nano /etc/ssl/certs/STAR_domain_com.crt'
sudo -H -u www-data bash -c 'nano /etc/ssl/certs/STAR_domain_com.ca-bundle'
sudo -H -u www-data bash -c 'nano /etc/ssl/private/domain.com.key'



