#install alpine
FROM alpine:3.12

#update and upgrade alpine
RUN apk update && apk upgrade

#install nginx and make dir for pid
RUN apk add nginx && mkdir -p /run/nginx

#copy config file for nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

#make dir for site and copy index file
RUN mkdir -p /var/www/my_site/
COPY index.html /var/www/my_site/

#copy ssl key and certs for nginx
COPY nginx.key /etc/ssl/private
COPY nginx.crt /etc/ssl/certs

#start nginx
CMD nginx -g "daemon off;"
