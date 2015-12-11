# nginx-docker

Container to run nginx  
This container is based on phusion/baseimage, with runit as startup script.

You can use the config file /etc/nginx/nginx.conf to setup the webserver  
use /var/www for logging by default  
use /etc/nginx/sites-enabled/*.conf to store site config.  

You can use dockerize -template source:destination in a my_init.d file, to create configfiles on startup.

Please do not change the startup CMD
