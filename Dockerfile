FROM ubuntu:latest
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y net-tools
RUN apt-get install -y nginx
COPY index.nginx-debian.html /var/www/html/
CMD ["nginx", "-g", "daemon off;"]