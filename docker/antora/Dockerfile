FROM ubuntu:20.04
ENV DEBIAN_FRONTEND noninteractive
ARG FUNCTION_DIR="/home/app/"
WORKDIR $FUNCTION_DIR
#setup scripts
COPY setup.sh awsconfig.sh return-code.py amazon-login.sh runAntoraAws.sh ./
RUN chmod +x setup.sh awsconfig.sh return-code.py amazon-login.sh runAntoraAws.sh
RUN ./setup.sh && \
	./awsconfig.sh && \
	./amazon-login.sh
#scripts and files for running antora
RUN mkdir antoracfg
WORKDIR antoracfg
COPY antora-playbook.yml makeAntora.sh bootscript.sh ./
RUN chmod +x bootscript.sh makeAntora.sh bootscript.sh
#Add file structure
RUN git config --system user.name user
RUN git config --system user.email user@username.com
RUN mkdir adocs
RUN mkdir css 
RUN mkdir -p docs/modules/ROOT/pages/
COPY css/ui-bundle.zip ./css
COPY docs/antora.yml docs/antora.yml
COPY docs/modules/ROOT/nav.adoc docs/modules/ROOT/
ADD https://github.com/aws/aws-lambda-runtime-interface-emulator/releases/latest/download/aws-lambda-rie /usr/bin/aws-lambda-rie
COPY start-lambda.sh /start-lambda.sh
RUN chmod 755 /usr/bin/aws-lambda-rie /start-lambda.sh
WORKDIR $FUNCTION_DIR
#ENTRYPOINT [ "/start-lambda.sh" ]
ENTRYPOINT [ "/usr/bin/python3", "-m", "awslambdaric" ]
CMD [ "return-code.handler" ]
