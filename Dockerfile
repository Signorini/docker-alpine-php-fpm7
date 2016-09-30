FROM prooph/php:7.0-fpm
MAINTAINER Signorini <signorini@gmail.com>
##
# PHP 7.X

RUN  docker-php-ext-install mysqli

RUN usermod -o -u 600 www-data
