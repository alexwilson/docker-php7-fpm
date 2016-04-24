FROM phpdockerio/php7-fpm:latest

MAINTAINER Alex Wilson <a@ax.gy>

RUN apt-get update \
    && apt-get -y --no-install-recommends install  php7.0-pgsql php7.0-redis php7.0-imagick php7.0-intl php7.0-cli \
    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

ADD symfony.ini /etc/php7/7.0/fpm/conf.d/
ADD symfony.ini /etc/php7/7.0/cli/conf.d/

WORKDIR "/var/www/aeris"
