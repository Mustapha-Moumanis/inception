#!/bin/sh

while true; do
    if [mysqladmin ping -h$HOST]; then
        echo "DONE!!"
        exit 0
    else
        echo "WAITING..."
    fi
done


php-fpm8.2 -F