FROM php:7.1-fpm

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        bash \
        git \
        vim \
        curl \
        libmemcached-dev \
        libz-dev \
        libpq-dev \
        libjpeg-dev \
        libpng-dev \
        libfreetype6-dev \
        libssl-dev \
        libmcrypt-dev

# Install the PHP mcrypt extention
RUN docker-php-ext-install mcrypt

# Install the PHP mcrypt extention
RUN docker-php-ext-install json

# Install the PHP pdo_mysql extention
RUN docker-php-ext-install pdo_mysql

# Install the PHP gd library
RUN docker-php-ext-configure gd \
        --enable-gd-native-ttf \
        --with-jpeg-dir=/usr/lib \
        --with-freetype-dir=/usr/include/freetype2 && \
    docker-php-ext-install gd

#####################################
# PHP REDIS EXTENSION FOR PHP 7.0
#####################################

ARG INSTALL_PHPREDIS=false
RUN if [ ${INSTALL_PHPREDIS} = true ]; then \
    # Install Php Redis Extension
    printf "\n" | pecl install -o -f redis \
    &&  rm -rf /tmp/pear \
    &&  docker-php-ext-enable redis \
;fi

#####################################
# MongoDB:
#####################################

ARG INSTALL_MONGO=false
RUN if [ ${INSTALL_MONGO} = true ]; then \
    # Install the mongodb extension
    pecl install mongodb && \
    docker-php-ext-enable mongodb \
;fi

#####################################
# ZipArchive:
#####################################

ARG INSTALL_ZIP_ARCHIVE=false
RUN if [ ${INSTALL_ZIP_ARCHIVE} = true ]; then \
    # Install the zip extension
    docker-php-ext-install zip \
;fi

#####################################
# bcmath:
#####################################

ARG INSTALL_BCMATH=false
RUN if [ ${INSTALL_BCMATH} = true ]; then \
    # Install the bcmath extension
    docker-php-ext-install bcmath \
;fi

# ADD ./laravel.ini /usr/local/etc/php/conf.d
# ADD ./xlaravel.pool.conf /usr/local/etc/php-fpm.d/
ADD ./www.conf /usr/local/etc/php-fpm.d/

#RUN rm -r /var/lib/apt/lists/*

RUN usermod -u 1000 www-data

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /var/www

CMD ["./docker/start.sh"]
#CMD ["php-fpm"]

EXPOSE 9000