FROM ubuntu:20.04
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
	&& apt-get install -y \
	apache2 \
	&& rm -rf /var/lib/apt/lists/*
COPY ./website/ /var/www/html/
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]
