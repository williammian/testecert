FROM nginx:latest
COPY /dist/ /usr/share/nginx/html
COPY serverssl.conf /etc/nginx/conf.d/serverssl.conf
ADD /certs/cert.crt /etc/nginx/certs/cert.crt
ADD /certs/cert.key /etc/nginx/certs/cert.key
RUN apt-get -y update
RUN apt-get -y install nano