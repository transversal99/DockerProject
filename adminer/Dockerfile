# Use Alpine Linux as the base image
FROM alpine:latest

RUN apk update && apk upgrade

RUN apk add --no-cache wget

# Download Adminer from GitHub
RUN wget -O /adminer.php https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php

# Install PHP, PostgreSQL driver, and other necessary packages for serving web content
RUN apk add --no-cache php php-pdo_pgsql php-pgsql php-fpm curl php-phar php-mbstring php-openssl php-ctype php-json php-iconv php-session php-pdo php-tokenizer php-simplexml php-xml libxml2-dev php-dom

# Install ca-certificates- recommended for packages
RUN apk --update-cache add ca-certificates && \
    echo "https://dl.bintray.com/php-alpine/v3.12/php-8.0" >> /etc/apk/repositories

# Download Adminer from GitHub
WORKDIR /var/www/html

# Expose port 8080 for accessing Adminer
EXPOSE 8080

# Command to run Adminer when the container starts
CMD ["php", "-S", "0.0.0.0:8080", "/adminer.php"]
