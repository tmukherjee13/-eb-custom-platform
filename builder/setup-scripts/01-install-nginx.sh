#!/bin/bash -xe

. $BUILDER_DIR/CONFIG

#groupadd nginx
#useradd -d /usr/sbin/ -M -s /usr/sbin/nologin nginx -g nginx
# remove the nginx conf since we need to install nginx first
rm -rf /etc/nginx/

apt install -y nginx

rsync -ar $BUILDER_DIR/platform-uploads/etc/nginx/ /etc/nginx/
chmod 755 /etc/nginx/conf.d
chmod 644 /etc/nginx/nginx.conf
chown -R root:root /etc/nginx/

#chkconfig nginx on
