FROM ubuntu:20.04
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt install git -y && apt install curl -y
RUN apt-get install awscli -y
RUN mkdir -p /home/ubuntu/antora
WORKDIR /home/ubuntu/antora
RUN mkdir -p /root/.ssh/
COPY intern-deploy ./
RUN ssh-keyscan -t rsa github.com > /root/.ssh/known_hosts
RUN rm -rf /root/.ssh/config
RUN chmod 400 /home/ubuntu/antora/intern-deploy
RUN echo "IdentityFile /home/ubuntu/antora/intern-deploy" > /root/.ssh/config
RUN rm -rf antora
RUN git clone git@github.com:UWDDA/antora.git
WORKDIR antora
RUN git checkout km_docker && chmod +x setup.sh && ./setup.sh
RUN mv bootscript.sh ..
RUN mv antora-playbook.yml ..
WORKDIR /home/ubuntu/antora
RUN rm -rf antora
CMD ["/home/ubuntu/antora/bootscript.sh"]
