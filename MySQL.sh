sudo apt-get update
sudo apt-get install mysql-server
mysql_secure_installation
sudo service mysql status
sudo nano /etc/mysql/mysql.cnf

```
[mysqld]
bind-address = 127.0.0.1
local-infile=0
user=mysql
``` 

sudo service mysql restart
mysql -u root -p

RENAME USER 'root'@'localhost' to 'datazimmerroot'@'localhost';
SELECT user,host FROM mysql.user;
DELETE FROM mysql.user WHERE User="";
FLUSH PRIVILEGES;

CREATE USER 'datazimmer'@'localhost' IDENTIFIED BY 'Y3NuJy634{69FXc6tjHGTHU]QA4h##h#L92' WITH MAX_USER_CONNECTIONS 2;
FLUSH PRIVILEGES;

CREATE DATABASE datazimmer_zeXxomoDLzwBrXy CHARACTER SET utf8 COLLATE utf8_general_ci;
GRANT SELECT, INSERT, CREATE, DELETE, UPDATE ON datazimmer_zeXxomoDLzwBrXy.* TO 'datazimmer'@'localhost';
GRANT SELECT ON datazimmer_zeXxomoDLzwBrXy.gateways TO 'datazimmer'@'localhost';
GRANT SELECT ON datazimmer_zeXxomoDLzwBrXy.offlines TO 'datazimmer'@'localhost';

# ALTER USER 'datazimmer'@'localhost' WITH MAX_USER_CONNECTIONS 2;
# GRANT SELECT,UPDATE,DELETE ON testDB.* TO 'user'@'localhost';
# REVOKE UPDATE ON testDB.* FROM 'demo-user'@'localhost';

``` 
ALL PRIVILEGES – grants all privileges to the MySQL user
CREATE – 		 allows the user to create databases and tables
DROP - 			 allows the user to drop databases and tables
DELETE - 		 allows the user to delete rows from specific MySQL table
INSERT - 		 allows the user to insert rows into specific MySQL table
SELECT – 		 allows the user to read the database
UPDATE - 		 allows the user to update table rows
``` 

SHOW GRANTS FOR 'datazimmer'@'localhost';

UPDATE mysql.user SET File_priv='N' WHERE user!='datazimmer' AND user!='datazimmerroot';
FLUSH PRIVILEGES;

DELETE FROM users WHERE id = 2;

SHOW PROCESSLIST;

DROP DATABASE datazimmer_zeXxomoDLzwBrXy;
CREATE DATABASE datazimmer_zeXxomoDLzwBrXy CHARACTER SET utf8 COLLATE utf8_general_ci;
USE datazimmer_zeXxomoDLzwBrXy;
