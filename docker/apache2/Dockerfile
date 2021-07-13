FROM ubuntu:20.04
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
	&& apt-get install -y \
	apache2 \
	&& rm -rf /var/lib/apt/lists/*
EXPOSE 80
EXPOSE 8080
CMD ["apache2ctl", "-D", "FOREGROUND"]
