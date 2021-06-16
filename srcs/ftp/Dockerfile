#install alpine
FROM alpine:3.12

#update && upgrade alpine
RUN apk update && apk upgrade

#install ftp-server and necessery pakage
RUN apk add vsftpd libc6-compat

#add new group,  user and password
RUN adduser -D -g 'omillan' omillan
RUN echo "omillan:pass" | chpasswd

#copy config file for ftp-server
COPY vsftpd.conf /etc/vsftpd/

#copy and start script
COPY start.sh /
ENTRYPOINT ["sh", "start.sh"]
