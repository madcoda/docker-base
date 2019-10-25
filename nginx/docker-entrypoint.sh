#!/bin/sh

# set -e

echo "Starting Nginx container ..."
# echo "upstream php-upstream { server ${PHP_UPSTREAM_CONTAINER}:${PHP_UPSTREAM_PORT}; }" > /etc/nginx/conf.d/upstream.conf

exec "$@"