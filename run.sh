#!/bin/bash

echo "...Generating SSL certificates"
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/cert.key -out /etc/nginx/cert.crt

echo "...Setting up as reverse proxy to ${REMOTE_HOST}:${REMOTE_PORT}"
sed -i -e "s/REMOTE_HOST/${REMOTE_HOST}/g" -e "s/REMOTE_PORT/${REMOTE_PORT}/g" /etc/nginx/nginx.conf

echo "...Running nginx"
/usr/sbin/nginx -g "daemon off;"
