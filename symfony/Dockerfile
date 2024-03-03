FROM alpine

RUN apk update && apk upgrade

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

# Install dependencies
RUN apk --no-cache add curl git openssh-client

# Install Composer
RUN curl -sS https://get.symfony.com/cli/installer | bash

RUN symfony -v

RUN apk add symfony-cli # buildkit


WORKDIR /symfonyProject

EXPOSE 8000

ENTRYPOINT ["/bin/sh" "-c" "symfony server:start"]