# Use Alpine Linux as the base image for a lightweight container
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

RUN apk add --no-cache bash \
    && curl -1sLf 'https://dl.cloudsmith.io/public/symfony/stable/setup.alpine.sh' | bash \
    && apk add symfony-cli

RUN apk add symfony-cli

WORKDIR /symfonyProject

ENTRYPOINT [ "symfony server:start"]

EXPOSE 8000