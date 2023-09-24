--* @see https://mariadb.com/kb/en/configuring-mariadb-for-remote-client-access/
CREATE DATABASE IF NOT EXISTS laravel CHARACTER SET utf8mb4;
GRANT ALL PRIVILEGES ON laravel.* TO 'vagrant'@'%'
IDENTIFIED BY 'vagrant'  WITH GRANT OPTION;
