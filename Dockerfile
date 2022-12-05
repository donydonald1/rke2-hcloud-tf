FROM ubuntu
LABEL Version="1.0"
LABEL description="this is a webside resturant application for devops2go."


RUN apt-get clean
RUN apt-get update -y 
RUN apt-get upgrade -y 

RUN apt-get install -y apache2
RUN apt-get install -y apache2-utils
RUN apt-get clean


COPY bootstrap-restaurant /var/www/html
COPY bootstrap-restaurant/index.html /var/www/html

EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]

