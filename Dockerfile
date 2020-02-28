
FROM debian:buster

# INSTALL

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y nginx
RUN apt-get install -y vim
RUN apt-get install -y mariadb-server
RUN apt-get install -y mariadb-client
RUN apt-get install -y wget
RUN apt-get install -y php
RUN apt-get install -y php-fpm
RUN apt-get install -y php-gd
RUN apt-get install -y php-mysql
RUN apt-get install -y php-cli
RUN apt-get install -y php-curl
RUN apt-get install -y php-json
RUN apt-get install -y php-mbstring
RUN apt-get install -y curl

# INSTALL WORDPRESS
RUN wget https://fr.wordpress.org/latest-fr_FR.tar.gz
RUN tar -zxvf latest-fr_FR.tar.gz
RUN mv wordpress /var/www/html/wordpress
RUN chown -R www-data:www-data /var/www/html/wordpress/
RUN chmod -R 755 /var/www/html/wordpress/
RUN rm latest-fr_FR.tar.gz

# INSTALL PHPMYADMIN
RUN wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-all-languages.tar.gz
RUN tar -zxvf phpMyAdmin-4.9.0.1-all-languages.tar.gz
RUN mv phpMyAdmin-4.9.0.1-all-languages /var/www/html/phpMyAdmin
RUN rm phpMyAdmin-4.9.0.1-all-languages.tar.gz

# ajouter le fichier default de nginx
ADD ./srcs/default ./etc/nginx/sites-available/default

# ajouter la config de wordpress login root mdp root
ADD ./srcs/wp-config.php ./var/www/html/wordpress/wp-config.php

#ajouter le script
ADD ./srcs/init.sh init.sh

# initialiser les services
RUN sh init.sh