FROM phusion/baseimage:0.9.18

ADD docker/my_init.d/ etc/my_init.d
RUN chmod -R 700 /etc/my_init.d

ADD docker/service/ /etc/service/
RUN chmod -R 700 /etc/service/

RUN apt-get update
RUN apt-get install -y wget

RUN wget https://github.com/jwilder/dockerize/releases/download/v0.0.4/dockerize-linux-amd64-v0.0.4.tar.gz
RUN tar -C /usr/local/bin -xzvf dockerize-linux-amd64-v0.0.4.tar.gz
RUN rm dockerize-linux-amd64-v0.0.4.tar.gz

RUN apt-get update && apt-get install -y nginx

EXPOSE 80
