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

# wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
# chmod +x wp-cli.phar
# mv wp-cli.phar /usr/local/bin/wp

# cd /var/www/html ; wp core download --allow-root
sleep 3
wp config create --dbname=$MYSQL_DATABASE --dbuser=$MYSQL_USER --dbpass=$MYSQL_PASSWORD --dbhost=$HOST --allow-root
wp core install --url=$DOMAIN_NAME --title=$WP_WEB_TITLE --admin_user=$WP_ADMIN_USER --admin_password=$MYSQL_ROOT_PASSWORD --admin_email=$WP_EMAIL --allow-root
wp user create $WP_USER $WP_USER_EMAIL --role=subscriber --user_pass=$WP_USER_PASSWORD --allow-root
wp theme install twentytwenty --activate --allow-root

php-fpm8.2 -F