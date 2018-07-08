#!/usr/bin/env bash
set -e

service nginx restart
service php7.0-fpm restart
