#!/bin/bash

echo "$(sed 's/localhost/mmoumani.42.fr/g' etc/hosts)" > etc/hosts

nginx -g "daemon off;"