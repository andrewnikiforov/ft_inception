#install alpine
FROM alpine:3.12

#update and upgrade alpine
RUN apk update && apk upgrade

#install php-fpm server and nginx
RUN apk add  php7 php7-fpm php7-session php7-json php7-xml php7-iconv php7-ctype php7-mysqli php7-curl nginx

#copy config files for nginx and php-fpm
COPY default.conf /etc/nginx/conf.d/
COPY www.conf /etc/php7/php-fpm.d/

#copy ssl cert and key
COPY ./nginx.crt /etc/ssl/certs/
COPY ./nginx.key /etc/ssl/private/

#make dir for nginx pid-file
RUN mkdir /run/nginx/

#install adminer script
RUN mkdir -p /var/www/adminer
COPY adminer.php /var/www/adminer/index.php

#copy and start script
COPY start.sh /
ENTRYPOINT ["sh", "start.sh"]

