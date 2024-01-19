FROM debian:12

WORKDIR /var/www/html

RUN apt-get -y update && apt-get -y install php-fpm php8.2-mysqli wget mariadb-client
# RUN wget https://wordpress.org/latest.zip
# RUN unzip latest.zip
# RUN mv wordpress/* . && rm -rf wordpress latest.zip
# RUN mv wp-config-sample.php wp-config.pchown mysql:mysql /var/run/mysqld/mysqld.sockhp 

# RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
# RUN chmod +x wp-cli.phar
# RUN mv wp-cli.phar /usr/local/bin/wp

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

RUN wp core download --allow-root

COPY tools/script.sh .

RUN echo "listen = wordpress:9000" >> /etc/php/8.2/fpm/php-fpm.conf

# CMD ["php-fpm8.2", "-F"]
CMD ["bash", "script.sh"]

