FROM ubuntu:20.04
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt install git -y
RUN apt-get install awscli -y
RUN mkdir -p /home/ubuntu/conversion
WORKDIR /home/ubuntu/conversion
RUN mkdir -p /root/.ssh/
COPY intern-deploy ./
RUN ssh-keyscan -t rsa github.com > /root/.ssh/known_hosts
RUN rm -rf /root/.ssh/config
RUN chmod 400 /home/ubuntu/conversion/intern-deploy
RUN echo "IdentityFile /home/ubuntu/conversion/intern-deploy" > /root/.ssh/config
RUN rm -rf antora
RUN git clone git@github.com:UWDDA/antora.git
WORKDIR antora
RUN git checkout km_conversionSetupUpdate && chmod +x conversionSetup.sh && ./conversionSetup.sh
RUN mv conversion.sh ..
WORKDIR /home/ubuntu/conversion
RUN mkdir data
RUn rm -rf antora
RUN chmod +x conversion.sh
CMD /home/ubuntu/conversion/conversion.sh
