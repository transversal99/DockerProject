# Use Alpine Linux as the base image
FROM alpine:latest

# Download PHP packages for Alpine
ADD https://github.com/codecasts/php-alpine/releases/download/php-8.0.1-r1/alpine-v3.11_php-8.0_x86_64.zip /var/www/php-alpine

# Install ca-certificates- recommended for packages
RUN apk --update-cache add ca-certificates && \
    echo "https://dl.bintray.com/php-alpine/v3.12/php-8.0" >> /etc/apk/repositories

# install php 
RUN apk add --update-cache php

# Download Adminer from GitHub
ADD https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php /var/www/adminer.php

# Expose port 8080 for accessing Adminer
EXPOSE 8080

# Command to run Adminer when the container starts
CMD ["php", "-S", "0.0.0.0:8080", "-t", "/var/www"]
