# Use Alpine Linux as the base image
FROM alpine:latest

RUN apk update && apk upgrade
# Install PHP and other necessary packages for serving web content
RUN apk add php &&\
    apk add php-fpm &&\
    apk add curl &&\
    apk add php-phar &&\
    apk add php-mbstring &&\
    apk add php-openssl &&\
    apk add php-ctype &&\
    apk add php-json &&\
    apk add php-iconv &&\
    apk add php-session &&\
    apk add php-pdo &&\
    apk add php-tokenizer &&\
    apk add php-simplexml &&\
    apk --no-cache add php-xml &&\
    apk --no-cache add libxml2-dev &&\
    apk add php-dom



COPY adminer-4.8.1.php /adminer.php
# Install ca-certificates- recommended for packages
RUN apk --update-cache add ca-certificates && \
    echo "https://dl.bintray.com/php-alpine/v3.12/php-8.0" >> /etc/apk/repositories

# install php 
RUN apk add --update-cache php

# Download Adminer from GitHub

WORKDIR /var/www/html

# Expose port 8080 for accessing Adminer
EXPOSE 8080

# Command to run Adminer when the container starts
CMD ["php","-S","[::]:8080","-t","/var/www/"]
