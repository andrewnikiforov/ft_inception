#start openrc
rc default

#setup mariadb
/etc/init.d/mariadb setup

#start mariadb
rc-service mariadb start

#create wordpress database
mysql -u root --skip-password -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DB_NAME;"
mysql -u root --skip-password -e "CREATE USER IF NOT EXISTS '$MYSQL_DB_USER'@'%' IDENTIFIED BY '$MYSQL_DB_USER_PASSWORD';"
mysql -u root --skip-password -e "CREATE USER IF NOT EXISTS '$MYSQL_DB_USER'@'localhost' IDENTIFIED BY '$MYSQL_DB_USER_PASSWORD';"
mysql -u root --skip-password -e "GRANT ALL PRIVILEGES ON $MYSQL_DB_NAME.* TO '$MYSQL_DB_USER'@'%';"
mysql -u root --skip-password -e "GRANT ALL PRIVILEGES ON $MYSQL_DB_NAME.* TO '$MYSQL_DB_USER'@'localhost';"
mysql -u root --skip-password -e "FLUSH PRIVILEGES;"

#init wordpress db
mysql -u root $MYSQL_DB_NAME < $MYSQL_DB_NAME.sql

#send password for user root
mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';"

#stop mariadb
rc-service mariadb stop

#start mariadb in safe mode
/usr/bin/mysqld_safe

