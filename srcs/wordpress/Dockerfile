#install alpine
FROM alpine:3.12

#udate and upgrade alpine
RUN apk update && apk upgrade

#install php-fpm
RUN apk add php7 php7-fpm php7-session php7-json php7-mysqli php7-xml php7-curl php7-iconv php7-phar php7-redis php7-ctype

#install wordpress
ADD https://wordpress.org/latest.tar.gz /var/www/data/
RUN cd /var/www/data/ && tar -xf latest.tar.gz && rm -rf latest.tar.gz

#cope wordpress config
COPY wp-config.php /var/www/data/wordpress/

#copy config for php-fpm
COPY www.conf /etc/php7/php-fpm.d/

#copy start script where start php-fpm
COPY ./start.sh /
COPY object-cache.php /var/www/data/wordpress/wp-content

#start container
ENTRYPOINT ["sh", "start.sh"]
