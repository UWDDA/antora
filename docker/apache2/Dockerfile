FROM focal
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
	 apt-get install -y apache2
COPY ./website/ /var/www/html/
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]
