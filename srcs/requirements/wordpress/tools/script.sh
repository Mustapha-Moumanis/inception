#!/bin/bash

until mysql -h"$DB_HOST" -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" -e "USE $MYSQL_DATABASE" 2>/dev/null ; do
    echo "Wait for MariaDB to be ready!!"
    sleep 3
done

if ! [ -f wp-config.php ]; then
    wp config create --dbname=$MYSQL_DATABASE --dbuser=$MYSQL_USER --dbpass=$MYSQL_PASSWORD --dbhost=$DB_HOST --allow-root
    wp core install --url=$DOMAIN_NAME --title=$WP_WEB_TITLE --admin_user=$WP_ADMIN_USER --admin_password=$WP_ADMIN_PASSWORD --admin_email=$WP_ADMIN_EMAIL --allow-root
    wp user create $WP_USER $WP_USER_EMAIL --role=subscriber --user_pass=$WP_USER_PASSWORD --allow-root
else
    echo "Wordpress is ready"
fi

exec php-fpm7.4 -F