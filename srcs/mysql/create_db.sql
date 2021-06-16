CREATE DATABASE wordpress;
CREATE USER 'omillan'@'%' IDENTIFIED BY 'pass';
GRANT ALL PRIVILEGES ON wordpress.* TO 'omillan'@'%';
SET PASSWORD FOR 'root'@'localhost' = PASSWORD('123');
FLUSH PRIVILEGES;
