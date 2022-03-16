#!/bin/sh
mkdir /etc/nginx/ssl
cd /etc/nginx/ssl
openssl req -new -newkey rsa:2048 -nodes -keyout pa.key -subj "/C=FR/ST=PACA/L=42/O=42Company, Inc./OU=42/CN=42" -out pa.csr
openssl x509 -req -days 365 -in pa.csr -signkey pa.key -out pa.crt
service nginx start
