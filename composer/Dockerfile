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
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Create and configure Symfony project
RUN composer create-project symfony/skeleton symfonyProject && \
    cd symfonyProject && \
    composer require symfony/orm-pack twig symfony/maker-bundle



WORKDIR /volume/symfonyProject

CMD ["cp", "-R", "/symfonyProject/", "/volume","php-fpm"]