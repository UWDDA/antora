FROM ubuntu:20.04
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt install git -y
RUN apt-get install awscli -y
RUN mkdir -p /home/ubuntu/apache
WORKDIR /home/ubuntu/apache
RUN mkdir -p /root/.ssh/
COPY intern-deploy ./
RUN ssh-keyscan -t rsa github.com > /root/.ssh/known_hosts
RUN rm -rf /root/.ssh/config
RUN chmod 400 /home/ubuntu/apache/intern-deploy
RUN echo "IdentityFile /home/ubuntu/apache/intern-deploy" > /root/.ssh/config
RUN rm -rf antora
RUN git clone git@github.com:UWDDA/antora.git
WORKDIR antora
RUN git checkout development && chmod +x apacheSetup.sh && ./apacheSetup.sh
WORKDIR /home/ubuntu/apache
RUN rm -rf antora
EXPOSE 80
EXPOSE 8080
CMD ["apache2ctl", "-D", "FOREGROUND"]
