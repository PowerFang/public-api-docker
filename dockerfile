FROM php:7.1.3

RUN apt-get update
RUN apt-get install -y unzip git git-core zlib1g-dev mysql-client
RUN docker-php-ext-install mysqli pdo pdo_mysql zip
RUN docker-php-ext-enable mysqli pdo pdo_mysql zip
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

