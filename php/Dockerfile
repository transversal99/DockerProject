
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

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer
RUN composer create-project symfony/skeleton: symfonyProject
WORKDIR /symfonyProject

RUN composer install
RUN composer require symfony/orm-pack
RUN composer require twig
RUN composer require symfony/maker-bundle
RUN composer create-project symfony/skeleton:"7.0.*" my_project_directory



WORKDIR /volume/mon_projet
CMD ["cp", "-R", "/symfonyProject/", "/volume","php-fpm"]