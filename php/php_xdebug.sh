#!/bin/env bash

# Simple script to enable or disable the xdebug extension

case $1 in
  on)
    if [[ -f /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini.deactivated ]]; then
      echo  'haha'
      mv /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini.deactivated /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
      kill -USR2 1
    fi
  ;;
  off)
    if [[ -f /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini ]]; then
      mv /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini.deactivated
      kill -USR2 1
      echo  'ehe'
    fi
  ;;
  *)
    echo "Usage: php_debug on|off"
  ;;
esac