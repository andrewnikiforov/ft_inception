#copy wordpress file's
cp -rf /var/www/data/wordpress/* /var/www/wordpress/
rm -rf /var/www/data

#start php-fpm
/usr/sbin/php-fpm7 -F
