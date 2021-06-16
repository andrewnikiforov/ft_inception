#install alpine
FROM alpine:3.12

#make volume for mysql files
VOLUME ["/sys/fs/cgroup"]

#updaet and upgrade alpine
RUN apk update && apk upgrade

#add openrc mysql
RUN apk add openrc mariadb mariadb-common mariadb-client

#copy configs for mysqld
COPY my.cnf /etc/

#copy wordpress db
COPY wordpress.sql /

#copy and start script
COPY start.sh /
CMD sh start.sh
