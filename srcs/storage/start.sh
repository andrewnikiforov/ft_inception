#copy files to volume
cp -rf /var/www/data/* /var/www/storage
rm -rf /var/www/data

#start nginx
nginx -g "daemon off;"
