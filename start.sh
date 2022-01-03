#!/usr/bin/env bash

composer install

chmod -R 777 /var/www/storage/

php artisan cache:clear

php-fpm