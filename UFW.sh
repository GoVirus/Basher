sudo apt-get install ufw
sudo ufw status verbose
sudo ufw allow ssh
sudo ufw allow http
sudo ufw allow https
sudo ufw enable 
sudo ufw allow from 192.168.255.255
sudo ufw allow from 15.15.15.0/24  to any port 22
sudo ufw show added
sudo ufw app list
sudo ufw app info "Apache Full"
sudo ufw allow in "Apache Full"
sudo apt-get install fail2ban
sudo service fail2ban start
sudo iptables -A INPUT -s 192.168.0.0/24 -j ACCEPT