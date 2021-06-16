#install alpine
FROM alpine:3.12

#update and upgrade alpine
RUN apk update && apk upgrade

#install redis-server
RUN apk add redis

#copy redis config file
COPY redis.conf /etc

#start redis-server
CMD  redis-server /etc/redis.conf
