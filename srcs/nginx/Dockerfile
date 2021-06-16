#install alpine
FROM alpine:3.12

#udate and upgrade alpine
RUN apk update && apk upgrade

#install nginx and openssl
RUN apk add nginx openssl

#copy nginx config file
COPY ./default.conf /etc/nginx/conf.d/default.conf

#copy ssl cert and key
COPY ./nginx.crt /etc/ssl/certs/
COPY ./nginx.key /etc/ssl/private/

#make dir for nginx pid-file
RUN mkdir /run/nginx/

#container start with the script
ENTRYPOINT ["nginx", "-g", "daemon off;"]
