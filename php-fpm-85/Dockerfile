FROM php:8.5-fpm

# Install dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    # mysql-client \
    ca-certificates \
    libssl-dev \
    libpng-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    libmemcached-dev \
    libgmp-dev \
    libicu-dev \
    libpq-dev \
    libzip-dev \
    locales \
    zip \
    jpegoptim optipng pngquant gifsicle \
    vim \
    unzip \
    git \
    curl \
    cron\
    iputils-ping \
    && \
    # Install Nodejs and NPM
    # curl -sL https://deb.nodesource.com/setup_11.x | bash - && \
    # apt-get install -y nodejs && \
    # Clear cache
    apt-get clean && rm -rf /var/lib/apt/lists/*



# Install extensions
RUN docker-php-ext-install pdo_mysql mbstring zip exif pcntl iconv opcache gmp
RUN docker-php-ext-configure gd --with-freetype --with-jpeg
RUN docker-php-ext-install gd

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Add user for laravel application
RUN groupadd -g 1000 www
RUN useradd -u 1000 -ms /bin/bash -g www www

# Change current user to www
# USER www

# Expose port 9000 and start php-fpm server
EXPOSE 9000

CMD ["php-fpm"]
