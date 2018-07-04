#!/bin/bash -xe

. $BUILDER_DIR/CONFIG

apt install -y php \
php-mysql \
php-curl \
php-intl \
php-xsl \
php-mysqli \
php-gd \
php-mcrypt \
php-fpm

#chkconfig php-fpm on
