FROM debian:buster

# On met a jour
RUN apt-get update
RUN apt-get upgrade -y

# Installation de vim
RUN apt-get install -y vim

# Installation de mysql
RUN apt-get install -y php-fpm default-mysql-server php-mysql php-mbstring

# Installation de nginx
RUN apt-get install -y nginx openssl

# Installation de phpMyadmin

COPY /srcs/phpMyAdmin-4.9.2-all-languages.tar ./app/
RUN mkdir -p /var/www/html/phpmyadmin
RUN tar xvf app/phpMyAdmin-4.9.2-all-languages.tar --strip-components=1 -C /var/www/html/phpmyadmin
RUN rm -rf ./app/phpMyAdmin-4.9.2-all-languages.tar

# Installation de wordpress
COPY srcs/wordpress-5.3.2.tar ./app/
RUN tar xvf app/wordpress-5.3.2.tar -C /var/www/html/
RUN rm -rf app/wordpress-5.3.2.tar
COPY /srcs/wp-config.php /app/

# Configuration de nginx
RUN rm ./etc/nginx/sites-available/default ./etc/nginx/sites-enabled/default
COPY srcs/default ./etc/nginx/sites-available/
RUN chmod +x /etc/nginx/sites-available/default
RUN cp ./etc/nginx/sites-available/default ./etc/nginx/sites-enabled/default

# Configuration de SSL
COPY /srcs/nginx-selfsigned.crt /app/
COPY /srcs/nginx-selfsigned.key /app/

EXPOSE 80

EXPOSE 443

COPY ./srcs/start.sh ./app/

CMD ["/bin/bash", "/app/start.sh"]