FROM debian:oldstable

WORKDIR /var/www/html

RUN apt-get -y update

RUN apt-get -y install php-fpm php7.4-mysqli wget mariadb-client

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar

RUN mv wp-cli.phar /usr/local/bin/wp

RUN wp core download --allow-root

COPY tools/script.sh .

RUN mkdir /run/php/

EXPOSE 9000

RUN echo "listen = wordpress:9000" >> /etc/php/7.4/fpm/php-fpm.conf

CMD ["bash", "script.sh"]