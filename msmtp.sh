# config options: http://msmtp.sourceforge.net/doc/msmtp.html#A-user-configuration-file
defaults
logfile ~/.msmtp.log

# A first gmail address
account username@protonmail.com
host smtp.sendgrid.net
port 587
protocol smtp
auth login
from support@domain.com
user username
password YWE*Y9PoRV72F]$3V7K#TaH4#363A2
tls on
tls_trust_file /etc/ssl/certs/ca-certificates.crt

# Set a default account
# You need to set a default account for Mail
account default : username@protonmail.com

# cat email.txt | msmtp --debug --from=default -t sendgridtest@gmail.com