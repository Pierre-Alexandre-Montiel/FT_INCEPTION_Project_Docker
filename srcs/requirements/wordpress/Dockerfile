# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: pmontiel <pmontiel@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/03/04 11:23:40 by pmontiel          #+#    #+#              #
#    Updated: 2022/03/18 17:03:32 by pmontiel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


FROM debian:buster
EXPOSE 9000
RUN apt-get update
RUN apt install -y wget
RUN apt install -y vim
RUN apt-get update && apt-get upgrade && apt-get install php7.3-fpm php7.3-gd php7.3-mysql php7.3-curl php7.3-imap php7.3-mbstring php7.3-xml -y
COPY tools /srcs
RUN cp srcs/www.conf /etc/php/7.3/fpm/pool.d/www.conf
RUN cp srcs/script.sh ./
RUN mkdir -p /var/www/html
RUN cp -R srcs/wordpress /var/www/html
RUN chown -R www-data:www-data /var/www/html/wordpress
RUN mkdir -p /var/run/php
RUN apt install --reinstall php-fpm
RUN service php7.3-fpm restart
CMD ["bash", "script.sh"]
