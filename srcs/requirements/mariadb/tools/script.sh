#!/bin/bash

service mariadb start

sleep 2

mysql -u root -e "CREATE DATABASE IF NOT EXISTS ${MYSQL_DATABASE};\
CREATE USER IF NOT EXISTS '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';\
GRANT ALL PRIVILEGES ON ${MYSQL_DATABASE}.* TO '${MYSQL_USER}'@'%';\
FLUSH PRIVILEGES;"
mysqladmin -u root shutdown

mysqld_safe --bind-address=$DB_HOST
