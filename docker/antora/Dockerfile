FROM ubuntu:20.04
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt install git -y && apt install curl -y
RUN apt-get install awscli -y
RUN mkdir -p ~/antora
WORKDIR ~/antora
RUN mkdir -p ~/.ssh/
COPY intern-deploy ./
RUN ssh-keyscan -t rsa github.com > ~/.ssh/known_hosts
RUN rm -rf ~/.ssh/config
RUN chmod 400 /~/antora/intern-deploy
RUN echo "IdentityFile /~/antora/intern-deploy" > ~/.ssh/config
RUN rm -rf antora
RUN git clone git@github.com:UWDDA/antora.git
WORKDIR antora
RUN git checkout km_docker && chmod +x setup.sh && ./setup.sh
RUN mv bootscript.sh ..
RUN mv antora-playbook.yml ..
WORKDIR /~/antora
RUN rm -rf antora
CMD ["/~/antora/bootscript.sh"]
