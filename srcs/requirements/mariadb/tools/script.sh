#!/bin/sh
#if [ ! -d "/var/lib/mysql/wordpress" ]; then
#	mysql_install_db
	service mysql start
	#service mysql start
	sleep 2
	echo "CREATE DATABASE wordpress;" | mysql
	echo "CREATE USER 'pa'@'%' identified by 'pa42';" | mysql
	echo "GRANT ALL PRIVILEGES ON *.* TO 'pa'@'%';" | mysql
	echo "FLUSH PRIVILEGES;" | mysql
	service mysql stop
#fi
	service mysql start
	mysql wordpress < ./srcs/database.sql
#mysql
#service mysql stop
#mysql_safe
#sleep infinity
