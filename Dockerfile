FROM cprinse/docker-baseimage:0.1

RUN apt-get update && apt-get install -y nginx

ADD docker/config/nginx/ /etc/nginx/

ADD docker/my_init.d/ etc/my_init.d
RUN chmod -R 700 /etc/my_init.d

ADD docker/service/ /etc/service/
RUN chmod -R 700 /etc/service/

EXPOSE 80
