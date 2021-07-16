FROM ubuntu:20.04
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update \ 
	&& apt-get install -y \
	curl \ 
	nodejs \ 
	npm \
	&& rm -rf /var/lib/apt/lists/*
WORKDIR /home/ubuntu/
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash \
	&& export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")" \
	&& [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" \
	&& nvm install --lts 
RUN npm i -g @antora/cli@2.3 @antora/site-generator-default@2.3
RUN npm i -g http-server
COPY ./antora-playbook.yml .
COPY ./bootscript.sh . 
CMD ["./bootscript.sh"]
