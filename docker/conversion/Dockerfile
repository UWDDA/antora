FROM ubuntu:20.04
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt install git -y
RUN apt-get install awscli -y
RUN mkdir -p ~/conversion
WORKDIR ~/conversion
RUN mkdir -p ~/.ssh/
COPY github-deploy ./
RUN ssh-keyscan -t rsa github.com > ~/.ssh/known_hosts
RUN rm -rf ~/.ssh/config
RUN chmod 400 /~/conversion/github-deploy
RUN echo "IdentityFile /~/conversion/github-deploy" > ~/.ssh/config
RUN rm -rf antora
RUN git clone git@github.com:UWDDA/antora.git
WORKDIR antora
RUN git checkout km_conversionSetupUpdate && chmod +x conversionSetup.sh && ./conversionSetup.sh
RUN mv conversion.sh ..
WORKDIR /~/conversion
RUN mkdir data
RUn rm -rf antora
RUN chmod +x conversion.sh
CMD /~/conversion/conversion.sh
