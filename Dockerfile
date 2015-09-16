# LAMP
FROM ubuntu:vivid
MAINTAINER Sean Macdonald <sean@crazyhorsecoding.com>
RUN apt-get update && apt-get install -y apache2 php5 git curl tree nginx libapache2-mod-php5 lynx nano
VOLUME ["/var/www/domains", "/var/log/apache2", "/etc/apache2/sites-available"]
COPY sites-available/ /etc/apache2/sites-available/
RUN a2ensite master
EXPOSE 80
CMD ["apache2ctl","-DFOREGROUND"]
