# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: pmontiel <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/03/02 17:55:39 by pmontiel          #+#    #+#              #
#    Updated: 2022/03/16 16:48:44 by pmontiel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster
EXPOSE 443
RUN apt-get update
RUN apt install -y wget
RUN apt install -y vim
RUN apt install -y nginx
#RUN apt-get install -y php-fpm php-mysql
#RUN apt install -y mariadb-server
RUN apt install -y openssl
COPY tools /srcs
RUN mv srcs/default.conf /etc/nginx/sites-enabled/default
RUN mv srcs/index.php /var/www/html/
RUN mkdir /etc/nginx/ssl
RUN chmod -R 777 /etc/nginx/ssl
RUN cd /etc/nginx/ssl
RUN openssl req -newkey rsa:4096 -x509 -days 365 -nodes -out /etc/nginx/ssl/pa.crt -keyout /etc/nginx/ssl/pa.key -subj "/C=FR/ST=Paris/CN=lusehair"
#RUN service php7.3-fpm start
#RUN service mysql start
#RUN wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-all-languages.tar.gz
#RUN tar -zxvf phpMyAdmin-4.9.0.1-all-languages.tar.gz
#RUN mv phpMyAdmin-4.9.0.1-all-languages /var/www/html/phpMyAdmin
#RUN mv srcs/config.inc.php /var/www/html/phpMyAdmin/
#RUN cp -pr /var/www/html/phpMyAdmin/config.sample.inc.php /var/www/html/phpMyAdmin/config.inc.php
CMD ["nginx", "-g", "daemon off;"]
