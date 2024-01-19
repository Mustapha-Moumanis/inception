#!/bin/bash
# action() {
#     sleep 2;
#     wp config create --dbname=wordpress --dbuser=user --allow-root

# }

# action &

# while true; do
#     if [mysqladmin ping -h$HOST]; then
#         echo "DONE!!"
#         break;
#     else
#         echo "WAITING..."
#     fi
# done
wp core download

php-fpm8.2 -F