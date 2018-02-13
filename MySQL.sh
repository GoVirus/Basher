RENAMEsudo apt-get update
sudo apt-get install mysql-server
# sudo mysqld --initialize
mysql_secure_installation
systemctl status mysql.service
sudo nano /etc/mysql/my.cnf
# [mysqld]
# bind-address = 127.0.0.1
# local-infile=0
sudo ls -l /var/log/mysql*
mysql -u root -p
SELECT User,Host FROM mysql.user;
DELETE FROM mysql.user WHERE User="";
FLUSH PRIVILEGES;
CREATE DATABASE databasename CHARACTER SET utf8 COLLATE utf8_general_ci;
CREATE USER 'user'@'localhost' IDENTIFIED BY 'password';
# GRANT SELECT,UPDATE,DELETE ON testDB.* TO 'user'@'localhost';
# REVOKE UPDATE ON testDB.* FROM 'demo-user'@'localhost';
GRANT ALL ON databasename.* TO 'user'@'localhost';
FLUSH PRIVILEGES;
SHOW GRANTS FOR 'user'@'localhost';
RENAME USER 'root'@'localhost' to 'rootuser'@'localhost';
SELECT User,Host FROM mysql.user;
FLUSH PRIVILEGES;
UPDATE mysql.user SET File_priv='N' WHERE user!='hanszimmer' AND user!='rootuser';
FLUSH PRIVILEGES;
mysql -u newAdminUser -p
