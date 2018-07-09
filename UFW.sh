sudo apt-get install ufw
sudo ufw status verbose
sudo ufw allow ssh
sudo ufw allow http
sudo ufw allow https
sudo ufw enable 
sudo ufw allow from 192.168.255.255
sudo ufw allow from 15.15.15.0/24 to any port 22
sudo ufw show added
sudo ufw app list
sudo ufw app info "Apache Full"
sudo ufw allow in "Apache Full"
sudo apt-get install fail2ban
sudo service fail2ban start
sudo iptables -A INPUT -s 192.168.0.0/24 -j ACCEPT

sudo ufw allow from 185.156.175.51 to any port 22
sudo ufw allow from 185.156.176.59 to any port 22
sudo ufw allow from 185.156.176.43 to any port 22
sudo ufw allow from 185.156.176.35 to any port 22
sudo ufw allow from 185.156.176.171 to any port 22

# Cloudflare

# IPv4

sudo ufw allow from 103.21.244.0/22 to any port https
sudo ufw allow from 103.22.200.0/22 to any port https
sudo ufw allow from 103.31.4.0/22 to any port https
sudo ufw allow from 104.16.0.0/12 to any port https
sudo ufw allow from 108.162.192.0/18 to any port https
sudo ufw allow from 131.0.72.0/22 to any port https
sudo ufw allow from 141.101.64.0/18 to any port https
sudo ufw allow from 162.158.0.0/15 to any port https
sudo ufw allow from 172.64.0.0/13 to any port https
sudo ufw allow from 173.245.48.0/20 to any port https
sudo ufw allow from 188.114.96.0/20 to any port https
sudo ufw allow from 190.93.240.0/20 to any port https
sudo ufw allow from 197.234.240.0/22 to any port https
sudo ufw allow from 198.41.128.0/17 to any port https

# IPv6
sudo ufw allow from 2400:cb00::/32 to any port https
sudo ufw allow from 2405:8100::/32 to any port https
sudo ufw allow from 2405:b500::/32 to any port https
sudo ufw allow from 2606:4700::/32 to any port https
sudo ufw allow from 2803:f800::/32 to any port https
sudo ufw allow from 2c0f:f248::/32 to any port https
sudo ufw allow from 2a06:98c0::/29 to any port https