#install alpine
FROM alpine:3.12

#update and upgrade alpine
RUN apk update && apk upgrade

#install nginx
RUN apk add nginx

#copy config file for nginx
COPY default.conf /etc/nginx/conf.d

#copy ssl key and crt
COPY nginx.key /etc/ssl/private/
COPY nginx.crt /etc/ssl/certs/

#copy files for site
RUN mkdir -p /var/www/data/img
COPY 19.jpg /var/www/data/img
COPY 20.jpg /var/www/data/img

#make dir for pid
RUN mkdir /run/nginx/

#copy and start script
COPY start.sh /
ENTRYPOINT ["sh", "start.sh"]
