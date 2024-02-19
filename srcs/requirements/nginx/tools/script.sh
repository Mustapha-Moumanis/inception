#!/bin/bash

openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout $P_KEY \
    -out $CERTS_ -subj "/CN=$DOMAIN_NAME"

sed -i -e "s+DOMAIN_NAME+$DOMAIN_NAME+" -e "s+CERTS_+$CERTS_+" -e "s+P_KEY+$P_KEY+" /etc/nginx/sites-available/default

exec nginx -g "daemon off;"