#!/bin/bash

chown -R www-data:www-data /var/www/html/wordpress/

mkdir -p /run/php
touch /run/php/php7.3-fpm.sock
chown -R www-data:www-data /run/php/
chmod 660 /run/php/php7.3-fpm.sock

cd /var/www/html/wordpress
wp core download --allow-root

wp core config --dbname=${WORDPRESS_DB_NAME} --dbuser=${MYSQL_USER} --dbpass=${MYSQL_PASSWORD} --dbhost=mariadb --allow-root

wp core install --url=${DOMAIN_NAME} --title=inception --admin_user=${WP_ADMIN_USER} --admin_password=${WP_ADMIN_PW} --admin_email=${WP_ADMIN_EMAIL} --allow-root

wp user create ${WP_USER} ${WP_EMAIL} --role=author --user_pass=${WP_PW} --allow-root

exec $@
