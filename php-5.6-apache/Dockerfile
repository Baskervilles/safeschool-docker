FROM php:5.6-apache

# PHP Extensions
RUN docker-php-ext-install pdo pdo_mysql

# php.ini config
COPY php.ini /usr/local/etc/php/php.ini

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN composer --version

# Install Git and Zip
RUN apt-get update && apt-get install -y git
RUN git --version && \
	apt-get install -y zlib1g-dev && \
    docker-php-ext-install zip && \
	apt-get -y autoremove && \
    apt-get clean && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# add user to group for volume sharing RUN groupadd 1000
#RUN groupadd 1000
# run as www-data`s UID
RUN usermod -u 1000 www-data	

WORKDIR /var/www/html