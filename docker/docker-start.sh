#!/bin/sh
envsubst '$API_SERVER' < /etc/nginx/nginx.conf.tpl > /etc/nginx/nginx.conf
if [ x"$1" == x"frontend" ]; then
    env nginx
    tail -f /var/log/nginx/access.log
fi
env nginx
./gvadmin
