#!/bin/sh
service mysql start
sleep 2
echo "CREATE DATABASE wordpress;" | mysql
echo "CREATE USER 'pa'@'%' identified by 'pa42';" | mysql
echo "GRANT ALL PRIVILEGES ON *.* TO 'pa'@'%';" | mysql
echo "FLUSH PRIVILEGES;" | mysql
service mysql stop
service mysql start
mysql wordpress < ./srcs/database.sql
/usr/bin/mysqld_safe
