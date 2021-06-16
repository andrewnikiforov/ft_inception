#chown for ftp work dir
chown -R omillan:omillan /home/omillan

#start ftp-server
vsftpd /etc/vsftpd/vsftpd.conf
