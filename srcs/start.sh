
service php7.3-fpm start
service nginx start
service mysql start

# create database user for wordpress
mysql -u root <<MY_SQL
CREATE DATABASE wordpress;
CREATE USER 'wp_user'@'localhost' IDENTIFIED BY '1234';
GRANT ALL ON wordpress.* TO 'wp_user'@'localhost' IDENTIFIED BY '1234' WITH GRANT OPTION;
FLUSH PRIVILEGES;
MY_SQL

# create database user for phpmyadmin
mysql -u root <<PHP_MYADMIN
CREATE DATABASE php_user;
CREATE USER 'php_user'@'localhost' IDENTIFIED BY '1234';
GRANT ALL ON wordpress.* TO 'php_user'@'localhost' IDENTIFIED BY '1234' WITH GRANT OPTION;
FLUSH PRIVILEGES;
PHP_MYADMIN

# GRANT ALL PRIVILEGES ON wordpress.* TO 'wp_user'@'localhost';
mv ./app/wp-config.php ./var/www/html/wordpress/

while true; do sleep 1000; done