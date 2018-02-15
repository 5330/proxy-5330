#!/bin/bash

#host=`hostname -f`
host=192.168.1.11


cat ./nginx.conf.pre |sed s/HOSTNAME/${host}/ >/etc/nginx/conf.d/default.conf

nginx -g 'daemon off;'
