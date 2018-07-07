#!/bin/bash -xe

. $BUILDER_DIR/CONFIG

### INSTALL AND VALIDATE NODE ####
echo "SETTING UP NODE ON THE INSTANCE"
apt install -y wget tree git


echo "Creating base directories for platform."
mkdir -p $BEANSTALK_DIR/deploy/appsource/
mkdir -p /var/app/staging
mkdir -p /var/app/current
mkdir -p /var/log/nginx/healthd/
chown www-data:www-data /var/log/nginx/healthd/


## WRITE NODE_DIR TO CONFIG ON INSTANCE TO BE AVAILABLE FOR HOOKS
# mkdir -p $CONTAINER_CONFIG_FILE_DIR
# echo "NODE_DIR=$NODE_DIR/node-v4.4.5-linux-x64" >> $CONTAINER_CONFIG
# echo "CONTAINER_SCRIPTS_DIR=$CONTAINER_SCRIPTS_DIR" >> $CONTAINER_CONFIG


## Add node path to Beanstalk profile
# echo "export PATH=$NODE_DIR/node-v4.4.5-linux-x64/bin:\$PATH:/usr/local/bin" >> /opt/elasticbeanstalk/lib/ruby/profile.sh
# echo "export PM2_HOME=/etc/pm2" >> /opt/elasticbeanstalk/lib/ruby/profile.sh
