# Local
# ssh-keygen
# cat ~/.ssh/id_rsa.pub
mkdir   ~/.ssh
chmod 700 ~/.ssh
nano ~/.ssh/authorized_keys
# id_rsa.pub
chmod 600 ~/.ssh/authorized_keys
sudo nano /etc/ssh/sshd_config
# PermitRootLogin no
# PasswordAuthentication no
sudo service ssh restart
