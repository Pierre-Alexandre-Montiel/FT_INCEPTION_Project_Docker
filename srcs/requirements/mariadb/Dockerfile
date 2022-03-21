FROM debian:buster
EXPOSE 3306
RUN apt-get update
RUN apt install -y wget
RUN apt install -y mariadb-server
COPY tools /srcs
RUN mv srcs/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
CMD ["bash", "./srcs/script.sh"]
