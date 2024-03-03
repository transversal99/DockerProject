# Use Alpine Linux as the base image for a lightweight container
FROM alpine

# Expose port 8000 (if needed)
EXPOSE 8000

# Specify the entry point to start the Symfony server
# Use Alpine Linux as the base image for a lightweight container
FROM alpine
RUN  apk update && apk upgrade
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

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php -r "if (hash_file('sha384', 'composer-setup.php') === 'dac665fdc30fdd8ec78b38b9800061b4150413ff2e3b6f88543c636f7cd84f6db9189d43a81e5503cda447da73c7e5b6') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
RUN php composer-setup.php
RUN php -r "unlink('composer-setup.php');"

WORKDIR /symfonyProject/

# Expose port 8000 (if needed)
EXPOSE 8000

# Specify the entry point to start the Symfony server
ENTRYPOINT ["symfony", "server:start"]
