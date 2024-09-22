FROM php:8.3-fpm

# install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename composer

# install basic packages
RUN apt-get update && \
    apt-get install -y \
        build-essential \
        curl \
        git \
        gnupg \
        libzip-dev \
        libpq-dev \
        procps \
        unzip \
        zlib1g-dev

# install php extensions
RUN docker-php-ext-install \
        pdo_pgsql \
        pgsql \
        zip

# install nodejs
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && \
    apt-get install -y nodejs && \
    npm install -y nodejs && \
    npm install npm@latest -g
