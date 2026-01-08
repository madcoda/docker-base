FROM nginx:alpine

# Set working directory
WORKDIR /var/www

RUN addgroup -g 1000 www
RUN adduser -D -H -u 1000 -s /bin/bash -G www www


# Configs
# ARG PHP_UPSTREAM_CONTAINER=php-fpm
# ARG PHP_UPSTREAM_PORT=9000

COPY nginx.conf /etc/nginx/
COPY app.conf /etc/nginx/sites-available/

COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh


ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]